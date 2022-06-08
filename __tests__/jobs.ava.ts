import { NEAR, Gas } from 'near-workspaces';
import { getFunctionCallError, NearWorkspacesTest, encodeBase64 } from './helpers';


/**
 * function to run all tests
 */
export function tests(test: NearWorkspacesTest) {

  /**
   * add a new job
   */
  test('anyone can add jobs', async t => {
    const { bob, multicall } = t.context.accounts;
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
          attachedDeposit: (BigInt(bond_amount) - BigInt("1")).toString() // 1 yocto less than bond amount
        }
      ); 
    } catch (error: any) { callError = getFunctionCallError(error) }

    t.true( callError.includes("attached deposit must be greater or equal than the required bond") );
    t.log(`invalid job bond error: [${callError}]`);

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
    
    // 3. TODO: add other jobs 1 & 2
    // 3. TODO: test deleting job 0
    // 4. TODO: test edit job 1
    // 5. TODO: test activate job 1 & 2
    // 6. TODO: test delete job 1 (from croncat as well)
    // 7. TODO: trigger job 2

    // get all jobs
    const after_jobs: object[] = await multicall.view("get_jobs");
    
    t.true(
      job_id >= 0
      && ( after_jobs.length === (before_jobs.length + 1) )
    );
    t.log(`returned job_id: ${job_id}`);
  });
  test('multicall by admin TODO', async t => {
    const { alice, multicall, testHelper } = t.context.accounts;
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
    const logs: {[index: string]: any} = {};
    for (let i = 0; i < map_entries.length; i++) {
      logs[map_entries[i].key] = map_entries[i].value;
    }

    const call_11_1_block: bigint = BigInt( logs["call_11_1"] );
    const call_11_2_block: bigint = BigInt( logs["call_11_2"] );
    const call_12_1_block: bigint = BigInt( logs["call_12_1"] );
    const call_21_1_block: bigint = BigInt( logs["call_21_1"] );

    t.true(
      ( call_11_1_block === call_11_2_block )
      && ( call_11_1_block === call_21_1_block )
      && ( call_11_1_block < call_12_1_block )
    );
    t.log(`call_11_1_block: ${call_11_1_block}`);
    t.log(`call_11_2_block: ${call_11_2_block}`);
    t.log(`call_12_1_block: ${call_12_1_block}`);
    t.log(`call_21_1_block: ${call_21_1_block}`);
  });

  // TODO: test callbacks not callable by bob nor alice

}
