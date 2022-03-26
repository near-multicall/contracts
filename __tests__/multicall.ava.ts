import { Workspace, NEAR, Gas } from 'near-workspaces-ava';
import { getFunctionCallError, encodeBase64 } from './helpers';


/**
 * function to run all tests
 */
export function tests(workspace: Workspace) {

  /**
   * call multicall
   */
  workspace.test('multicall by non-admin', async (test, {alice, bob, multicall, root}) => {
    let callError: any;
    // bob isn't admin so he can't call multicall
    try {
      // try catch bacause contract should panick
      await bob.call(
        multicall.accountId,
        'multicall',
        {calls: [ [] ]},
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      );
    } catch (error) { callError = getFunctionCallError(error) }
    
    test.true(
      callError.includes("must be admin to call this function")
    );
    test.log(`type: "${callError.type}"`);
  });
  workspace.test('multicall by admin', async (test, {alice, bob, multicall, testHelper, root}) => {
    // alice is admin so she can call multicall
    /**
     * do a multicall with 5 calls as following (Pseudocode):
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

    const call_11_1_block: string = await testHelper.view("get_log_block", { log_msg: "call_11_1" });
    const call_11_2_block: string = await testHelper.view("get_log_block", { log_msg: "call_11_2" });
    const call_12_1_block: string = await testHelper.view("get_log_block", { log_msg: "call_12_1" });
    const call_21_1_block: string = await testHelper.view("get_log_block", { log_msg: "call_21_1" });

    test.true(
      ( BigInt(call_11_1_block) === BigInt(call_11_2_block) )
      && ( BigInt(call_11_1_block) === BigInt(call_21_1_block) )
      && ( BigInt(call_11_1_block) < BigInt(call_12_1_block) )
    );
    test.log(`call_11_1_block: ${call_11_1_block}`);
    test.log(`call_11_2_block: ${call_11_2_block}`);
    test.log(`call_12_1_block: ${call_12_1_block}`);
    test.log(`call_21_1_block: ${call_21_1_block}`);
  });

}
