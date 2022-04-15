import { Workspace, NEAR, Gas } from 'near-workspaces-ava';
import { getFunctionCallError, encodeBase64 } from './helpers';


/**
 * function to run all tests
 */
export function tests(workspace: Workspace) {

  /**
   * add a job
   */
  workspace.test('add jobs', async (test, {alice, bob, multicall, root}) => {
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

    // try multicall using attached fungible token
    
  });

}
