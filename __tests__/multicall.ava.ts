// TODO: add tests for multicall

import { Workspace, NEAR, Gas } from 'near-workspaces-ava';


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
    } catch (error) { callError = error }
    
    test.true(
      callError.kind.ExecutionError.includes("must be admin to call this function")
    );
    test.log(`type: "${callError.type}"`);
  });

}
