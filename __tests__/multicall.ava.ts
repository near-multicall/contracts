import { NEAR, Gas, TransactionResult } from 'near-workspaces';
import { encodeBase64, NearWorkspacesTest } from './helpers';


/**
 * function to run all tests
 */
export function tests(test: NearWorkspacesTest) {

  /**
   * call multicall
   */
  test('multicall by admin', async t => {
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
  test('multicall with safe_then chain', async t => {
    const { alice, multicall, testHelper } = t.context.accounts;
    // alice is admin so she can call multicall
    /**
     * do a multicall with 5 batches as following (Pseudocode):
     *   calls = [
     *     [ Batch_11, Batch_12, Batch_13, Batch_14, Batch_15 ],
     *   ]
     * where each batch is a single call to "safe_then", which will trigger other actions depending
     * on whether previous call in the promise chain succeeded or failed:
     *   Batch_11: - wrapped actions: [ "call_11_1 on_success", "call_11_2 on_success" ]
     *             - should succeed and execute both actions
     *   Batch_12: - wrapped actions: [ "call_12_1 on_success", "do_fail" ]
     *             - should call both actions. "do_fail" should panic
     *   Batch_13: - wrapped actions: [ "call_13_1 on_success" ]
     *             - should panic and not call the action, since no fallback actions supplied
     *   Batch_14: - wrapped actions: [ "call_14_1 on_success", "call_14_1 on_fail", "call_14_2 on_fail" ]
     *             - should only call actions 2 and 3, since previous batch failed and those 2 actions are the fallback
     *   Batch_15: - wrapped actions: [ "call_15_1 on_success", "call_15_1 on_fail" ]
     *             - should only call action 2, since previous batch executes a successful fallback
     * 
     * 
     * test:
     * 1- batch
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
              address: multicall.accountId,
              actions: [
                {
                  func: "safe_then",
                  args: encodeBase64(JSON.stringify( { 
                    on_success: {
                      address: testHelper.accountId,
                      actions: [
                        {
                          func: "log",
                          args: encodeBase64(JSON.stringify( { msg: "call_11_1 on_success" } )),
                          gas: "5000000000000",
                          depo: "0"
                        },
                        {
                          func: "log",
                          args: encodeBase64(JSON.stringify( { msg: "call_11_2 on_success" } )),
                          gas: "5000000000000",
                          depo: "0"
                        }
                      ]
                    }
                  } )),
                  gas: "20000000000000",
                  depo: "0"
                }
              ]
            },
            {
              address: multicall.accountId,
              actions: [
                {
                  func: "safe_then",
                  args: encodeBase64(JSON.stringify( { 
                    on_success: {
                      address: testHelper.accountId,
                      actions: [
                        {
                          func: "log",
                          args: encodeBase64(JSON.stringify( { msg: "call_12_1 on_success" } )),
                          gas: "5000000000000",
                          depo: "0"
                        },
                        {
                          func: "do_fail",
                          args: encodeBase64(JSON.stringify( {} )),
                          gas: "5000000000000",
                          depo: "0"
                        }
                      ]
                    }
                  } )),
                  gas: "20000000000000",
                  depo: "0"
                }
              ]
            },
            {
              address: multicall.accountId,
              actions: [
                {
                  func: "safe_then",
                  args: encodeBase64(JSON.stringify( { 
                    on_success: {
                      address: testHelper.accountId,
                      actions: [
                        {
                          func: "log",
                          args: encodeBase64(JSON.stringify( { msg: "call_13_1 on_success" } )),
                          gas: "5000000000000",
                          depo: "0"
                        }
                      ]
                    }
                  } )),
                  gas: "15000000000000",
                  depo: "0"
                }
              ]
            },
            {
              address: multicall.accountId,
              actions: [
                {
                  func: "safe_then",
                  args: encodeBase64(JSON.stringify( { 
                    on_success: {
                      address: testHelper.accountId,
                      actions: [
                        {
                          func: "log",
                          args: encodeBase64(JSON.stringify( { msg: "call_14_1 on_success" } )),
                          gas: "5000000000000",
                          depo: "0"
                        }
                      ]
                    },
                    on_fail: {
                      address: testHelper.accountId,
                      actions: [
                        {
                          func: "log",
                          args: encodeBase64(JSON.stringify( { msg: "call_14_1 on_fail" } )),
                          gas: "5000000000000",
                          depo: "0"
                        },
                        {
                          func: "log",
                          args: encodeBase64(JSON.stringify( { msg: "call_14_2 on_fail" } )),
                          gas: "5000000000000",
                          depo: "0"
                        }
                      ]
                    }
                  } )),
                  gas: "25000000000000",
                  depo: "0"
                }
              ]
            },
            {
              address: multicall.accountId,
              actions: [
                {
                  func: "safe_then",
                  args: encodeBase64(JSON.stringify( { 
                    on_success: {
                      address: testHelper.accountId,
                      actions: [
                        {
                          func: "log",
                          args: encodeBase64(JSON.stringify( { msg: "call_15_1 on_success" } )),
                          gas: "5000000000000",
                          depo: "0"
                        }
                      ]
                    },
                    on_fail: {
                      address: testHelper.accountId,
                      actions: [
                        {
                          func: "log",
                          args: encodeBase64(JSON.stringify( { msg: "call_15_1 on_fail" } )),
                          gas: "5000000000000",
                          depo: "0"
                        }
                      ]
                    }
                  } )),
                  gas: "15000000000000",
                  depo: "0"
                }
              ]
            }
          ]
        ]
      },
      {
        gas: Gas.parse('180 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );

    const map_entries: {key: string, value: string}[] = await testHelper.view("get_logs", {});

    const logs: {[index: string]: any} = {};
    for (let i = 0; i < map_entries.length; i++) {
      logs[map_entries[i].key] = map_entries[i].value;
    }

    const call_11_1_block: bigint = BigInt( logs["call_11_1 on_success"] );
    const call_11_2_block: bigint = BigInt( logs["call_11_2 on_success"] );
    const call_14_1_block: bigint = BigInt( logs["call_14_1 on_fail"] );
    const call_14_2_block: bigint = BigInt( logs["call_14_2 on_fail"] );


    t.true(
      ( call_11_1_block === call_11_2_block )
      && ( call_14_1_block === call_14_2_block )
      && ( !logs.hasOwnProperty("call_12_1 on_success") )
      && ( !logs.hasOwnProperty("call_13_1 on_success") )
      && ( !logs.hasOwnProperty("call_14_1 on_success") )
      && ( !logs.hasOwnProperty("call_15_1 on_fail") )
      && ( logs.hasOwnProperty("call_14_1 on_fail") && logs.hasOwnProperty("call_14_2 on_fail") )
      && ( logs.hasOwnProperty("call_15_1 on_success") )
    );
    t.log(logs);
  });
  test('multicall by ft_transfer_call', async t => {
    const { alice, bob, multicall, testHelper, testToken } = t.context.accounts;
    let txReturn: TransactionResult;
    const mintAmount: string = "10";
    const multicallArgs: any = {
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
    }
    const storage_deposit_bounds: any = await testToken.view("storage_balance_bounds", {});

    
    /**
     * test plan:
     * 1- test token is not whitelisted:
     *   a/ do multicall with bob (non-admin) => should fail because token not whitelisted
     * 2- whitelist the test token
     *   a/ do multicall with bob (non-admin) => should fail because bob is not an admin
     *   b/ do multicall with alice (admin) => should succeed
     */

    // test case: 1- a/
    txReturn = await bob.batch(testToken.accountId).functionCall(
      "mint",
      { account_id: bob.accountId, amount: mintAmount }
    ).functionCall(
      "storage_deposit",
      { account_id: multicall.accountId },
      { attachedDeposit: storage_deposit_bounds.max }
    ).functionCall(
      "ft_transfer_call",
      { 
        receiver_id: multicall.accountId,
        amount: "1",
        msg: `{"function_id":"multicall","args":"${encodeBase64(JSON.stringify( multicallArgs ))}"}`
      },
      { gas: Gas.parse('150 Tgas'), attachedDeposit: NEAR.from('1') } // 1 yocto
    ).transact();

    // check bob's balance for sanity checks
    const bob_balance_1: string = await testToken.view("ft_balance_of", { account_id: bob.accountId });
    t.true( bob_balance_1 === mintAmount );
    t.log(`bob_balance_1: "${bob_balance_1}"`);
    t.true(
      txReturn.result.receipts_outcome[1].outcome.logs[0].includes(`${testToken.accountId} not on token whitelist`)
    );
    t.log(`logs 1-a: [${txReturn.result.receipts_outcome[1].outcome.logs}]`);


    // test case: 2- a/
    // whitelist test token on multicall, alice should do it because she's admin
    await alice.call(
      multicall.accountId,
      'tokens_add',
      {
        addresses: [testToken.accountId]
      },
      {
        gas: Gas.parse('5 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );
    txReturn = await bob.batch(testToken.accountId).functionCall(
      "ft_transfer_call",
      { 
        receiver_id: multicall.accountId,
        amount: "1",
        msg: `{"function_id":"multicall","args":"${encodeBase64(JSON.stringify( multicallArgs ))}"}`
      },
      { gas: Gas.parse('150 Tgas'), attachedDeposit: NEAR.from('1') } // 1 yocto
    ).transact();

    // check bob's balance for sanity checks
    const bob_balance_2: string = await testToken.view("ft_balance_of", { account_id: bob.accountId });
    t.true( bob_balance_1 === bob_balance_2 )
    t.log(`bob_balance_2: "${bob_balance_2}"`);
    t.true(
      txReturn.result.receipts_outcome[1].outcome.logs[0].includes(`${bob.accountId} must be admin to call this function`)
    );
    t.log(`logs 2-a: [${txReturn.result.receipts_outcome[1].outcome.logs}]`);

    
    // test case: 2- b/
    txReturn = await alice.batch(testToken.accountId).functionCall(
      "mint",
      { account_id: alice.accountId, amount: mintAmount }
    ).functionCall(
      "ft_transfer_call",
      { 
        receiver_id: multicall.accountId,
        amount: "1",
        msg: `{"function_id":"multicall","args":"${encodeBase64(JSON.stringify( multicallArgs ))}"}`
      },
      { gas: Gas.parse('150 Tgas'), attachedDeposit: NEAR.from('1') } // 1 yocto
    ).transact();

    // check alice's balance for sanity checks
    const alice_balance: string = await testToken.view("ft_balance_of", { account_id: bob.accountId });
    t.true( alice_balance === mintAmount );
    t.log(`alice_balance: "${alice_balance}"`);
    // check multicall correctly executed
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

}
