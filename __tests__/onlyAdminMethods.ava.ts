import { NEAR, Gas } from 'near-workspaces';
import { getFunctionCallError, NearWorkspacesTest } from './helpers';


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

    // All function calls to test go here
    // bob isn't admin so he can't do the following:
    const TXs: Promise<unknown>[] = [
      // add admins
      bob.call(
        multicall.accountId,
        'admins_add',
        {
          account_ids: [bob.accountId]
        },
        {
          gas: Gas.parse('20 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // remove admins
      bob.call(
        multicall.accountId,
        'admins_remove',
        { account_ids: [alice.accountId] },
        {
          gas: Gas.parse('20 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // add tokens to whitelist
      bob.call(
        multicall.accountId,
        'tokens_add',
        {
          addresses: [testToken.accountId]
        },
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // remove tokens from whitelist
      bob.call(
        multicall.accountId,
        'tokens_remove',
        {
          addresses: [testToken.accountId]
        },
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // transfer NEAR out of the contract
      bob.call(
        multicall.accountId,
        'near_transfer',
        {
          account_id: bob.accountId,
          amount: NEAR.parse("1").toString() // 1 NEAR
        },
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // activate jobs
      bob.call(
        multicall.accountId,
        'job_activate',
        { job_id: 0 },  // it's okay if job doesn't exist, since we check for caller permissions first
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // pause jobs
      bob.call(
        multicall.accountId,
        'jobs_pause',
        { job_ids: [0, 1] },  // it's okay if job doesn't exist, since we check for caller permissions first
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // resume paused jobs
      bob.call(
        multicall.accountId,
        'jobs_resume',
        { job_ids: [0, 1] },  // it's okay if job doesn't exist, since we check for caller permissions first
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // edit an existing job
      bob.call(
        multicall.accountId,
        'job_edit',
        {
          job_id: 0,  // it's okay if job doesn't exist, since we check for caller permissions first
          job_multicalls: [],
          job_total_budget: "1",
          job_start_at: "1654539058077000000", // some timestamp (nanoseconds)
          job_is_active: true
        },
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // delete a job
      bob.call(
        multicall.accountId,
        'job_delete',
        { job_id: 0 },  // it's okay if job doesn't exist, since we check for caller permissions first
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // change job bond amount
      bob.call(
        multicall.accountId,
        'set_job_bond',
        { amount: "0" },
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // change croncat's manager address
      bob.call(
        multicall.accountId,
        'set_croncat_manager',
        { address: bob.accountId },
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      // call multicall()
      bob.call(
        multicall.accountId,
        'multicall',
        {calls: [ [] ]},
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      )
    ]

    const promiseResults = await Promise.allSettled(TXs);

    promiseResults.forEach( res => {
      t.true(
        res.status === "rejected" 
        && getFunctionCallError(res.reason).includes("must be admin to call this function") 
      );
    });

    t.log(`non-admin prohibited methods return: [${promiseResults}]`);
  });

}
