import { NEAR, Gas, JsonRpcProvider } from 'near-workspaces';
import { transactions } from 'near-api-js';
import { getFunctionCallError, NearWorkspacesTest, TX, signAndSendTransactions } from './helpers';


/**
 * function to run all tests
 */
export function tests(test: NearWorkspacesTest) {

  /**
   * call all only-admin methods with a non-admin account
   * all tests should fail with the same error message
   */
  test('call only-admin methods with non-admin', async t => {
    const { alice, bob, multicall, testToken } = t.context.accounts;
    const provider: JsonRpcProvider = t.context.worker.provider;

    // All function calls to test go here
    // bob isn't admin so he can't do the following:
    const bobTXs: TX[] = [
      // add admins
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
            'admins_add',
            {
              account_ids: [bob.accountId]
            },
            Gas.parse('20 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // remove admins
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
            'admins_remove',
            { account_ids: [alice.accountId] },
            Gas.parse('20 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // add tokens to whitelist
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
            'tokens_add',
            { addresses: [testToken.accountId] },
            Gas.parse('5 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // remove tokens from whitelist
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
            'tokens_remove',
            { addresses: [testToken.accountId] },
            Gas.parse('5 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // transfer NEAR out of the contract
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
            'near_transfer',
            {
              account_id: bob.accountId,
              amount: NEAR.parse("1").toString() // 1 NEAR
            },
            Gas.parse('5 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // activate jobs
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
            'job_activate',
            { job_id: 0 },  // it's okay if job doesn't exist, since we check for caller permissions first
            Gas.parse('5 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // pause jobs
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
            'jobs_pause',
            { job_ids: [0, 1] },  // it's okay if job doesn't exist, since we check for caller permissions first
            Gas.parse('5 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // resume paused jobs
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
            'jobs_resume',
            { job_ids: [0, 1] },  // it's okay if job doesn't exist, since we check for caller permissions first
            Gas.parse('5 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // edit an existing job
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
          'job_edit',
          {
            job_id: 0,  // it's okay if job doesn't exist, since we check for caller permissions first
            job_multicalls: [],
            job_total_budget: "1",
            job_start_at: "1654539058077000000", // some timestamp (nanoseconds)
            job_is_active: true
          },
            Gas.parse('5 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // delete a job
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
          'job_delete',
          { job_id: 0 },  // it's okay if job doesn't exist, since we check for caller permissions first
            Gas.parse('5 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // change job bond amount
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
            'set_job_bond',
            { amount: "0" },
            Gas.parse('5 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // change croncat's manager address
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
            'set_croncat_manager',
            { address: bob.accountId },
            Gas.parse('5 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      },
      // call multicall()
      {
        receiver: multicall.accountId,
        actions: [
          transactions.functionCall(
            'multicall',
            {calls: [ [] ]},
            Gas.parse('5 Tgas'),
            NEAR.from('1') // 1 yocto
          )
        ]
      }
    ]

    const txResults = await signAndSendTransactions(bob, provider, bobTXs);
    // wrap the results to be compatible with input of getFunctionCallError
    const wrappedResults = txResults.map( result => {
      return {
        reason: {
          message: JSON.stringify({ result }),
          stack: ""
        } 
      }
    })

    wrappedResults.forEach( res => {
      t.true(
        getFunctionCallError(res.reason).includes("must be admin to call this function") 
      );
    });

    t.log(`non-admin prohibited methods return: [${txResults}]`);
  });

}
