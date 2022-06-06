import { Workspace, NEAR, Gas } from 'near-workspaces-ava';
import { getFunctionCallError, encodeBase64 } from './helpers';


/**
 * function to run all tests
 */
export function tests(workspace: Workspace) {

  /**
   * add a new job
   */
  workspace.test('anyone can add jobs', async (test, {bob, multicall, testHelper}) => {
    let callError: any;
    // args to be used in job_add
    const job_add_args = {
      job_multicalls: [
        {
          calls: [
            [
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAxIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  },
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAxIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              },
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAxIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              }
            ],
            [
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAxIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              }
            ]
          ]
        },
        {
          calls: [
            [
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAyIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  },
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAyIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              },
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAyIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              }
            ],
            [
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAyIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              }
            ]
          ]
        }
      ],
      job_cadence: "0 * * * * *",
      job_trigger_gas: "70000000000000",
      job_total_budget: "1000000000000000000000000"
    }

    // get all jobs, and required job bond amount
    const [before_jobs, bond_amount]: any[] = await Promise.all([
      multicall.view("get_jobs"),
      multicall.view("get_job_bond")
    ]);
    
    // bob isn't admin but should be able to add new jobs
    // 1. try with invalid bond amount => should fail
    try {
      const job_id: number = await bob.call(
        multicall.accountId,
        "job_add",
        job_add_args,
        {
          gas: Gas.parse('15 Tgas'),
          attachedDeposit: new NEAR.BN(bond_amount).sub( new NEAR.BN("1" ) ) // 1 yocto less than bond amount
        }
      ); 
    } catch (error) { callError = getFunctionCallError(error) }

    test.true( callError.includes("attached deposit must be greater or equal than the required bond") );
    test.log(`invalid job bond error: [${callError}]`);

    // 2. try with valid bond amount => should succeed
    const job_id: number = await bob.call(
      multicall.accountId,
      "job_add",
      job_add_args,
      {
        gas: Gas.parse('15 Tgas'),
        attachedDeposit: bond_amount
      }
    ); 

    // get all jobs
    const after_jobs: object[] = await multicall.view("get_jobs");
    
    test.true(
      job_id >= 0
      && ( after_jobs.length === (before_jobs.length + 1) )
    );
    test.log(`returned job_id: ${job_id}`);
  });
  workspace.test('multicall by admin TODO', async (test, {alice, bob, multicall, testHelper}) => {
    // alice is admin so she can call multicall
    /**
     * do a multicall with 3 batches as following (Pseudocode):
     *   calls = [
     *     [ Batch_11, Batch_12 ],
     *     [ Batch_21 ]
     *   ]
     * where:
     *   Batch_11 = { address: testHelper.accountId, actions: [ call_11_1, call_11_2 ] }
     *   Batch_12 = { address: testHelper.accountId, actions: [ call_12_1 ] }
     *   Batch_21 = { address: testHelper.accountId, actions: [ call_21_1 ] }
     * 
     * 
     * test:
     * 1- calls in the same batch run in the same block, here: call_11_1 & call_11_2
     * 2- Batch_21 runs parallel to Batch_11
     * 3- Batch_12 runs after to Batch_11
     */
    await alice.call(
      multicall.accountId,
      'multicall',
      {
        calls: [
          [ 
            {
              address: testHelper.accountId,
              actions: [
                {
                  func: "log",
                  args: encodeBase64(JSON.stringify( { msg: "call_11_1" } )),
                  gas: "5000000000000",
                  depo: "0"
                },
                {
                  func: "log",
                  args: encodeBase64(JSON.stringify( { msg: "call_11_2" } )),
                  gas: "5000000000000",
                  depo: "0"
                }
              ]
            },
            {
              address: testHelper.accountId,
              actions: [
                {
                  func: "log",
                  args: encodeBase64(JSON.stringify( { msg: "call_12_1" } )),
                  gas: "5000000000000",
                  depo: "0"
                }
              ]
            }
          ],
          [
            {
              address: testHelper.accountId,
              actions: [
                {
                  func: "log",
                  args: encodeBase64(JSON.stringify( { msg: "call_21_1" } )),
                  gas: "5000000000000",
                  depo: "0"
                }
              ]
            }
          ]
        ]
      },
      {
        gas: Gas.parse('70 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );

    const map_entries: {key: string, value: string}[] = await testHelper.view("get_logs", {});
    const logs = {};
    for (let i = 0; i < map_entries.length; i++) {
      logs[map_entries[i].key] = map_entries[i].value;
    }

    const call_11_1_block: bigint = BigInt( logs["call_11_1"] );
    const call_11_2_block: bigint = BigInt( logs["call_11_2"] );
    const call_12_1_block: bigint = BigInt( logs["call_12_1"] );
    const call_21_1_block: bigint = BigInt( logs["call_21_1"] );

    test.true(
      ( call_11_1_block === call_11_2_block )
      && ( call_11_1_block === call_21_1_block )
      && ( call_11_1_block < call_12_1_block )
    );
    test.log(`call_11_1_block: ${call_11_1_block}`);
    test.log(`call_11_2_block: ${call_11_2_block}`);
    test.log(`call_12_1_block: ${call_12_1_block}`);
    test.log(`call_21_1_block: ${call_21_1_block}`);
  });
  workspace.test('prohibited job methods for non-admin', async (test, {bob, multicall}) => {

    // bob isn't admin so he can't do the following with jobs:
    // activate, pause, resume, edit, delete
    // set_job_bond, set_croncat_manager
    const results = await Promise.allSettled([
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
      )
    ]);

    results.forEach( res => {
      test.true(
        res.status === "rejected" 
        && getFunctionCallError(res.reason).includes("must be admin to call this function") 
      );
    });

    test.log(`non-admin prohibited job methods return: [${results}]`);
  });
  // TODO: test callbacks not callable by bob nor alice

}
