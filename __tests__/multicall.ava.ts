// TODO: add tests for multicall

import { Workspace } from 'near-workspaces-ava';


/**
 * function to run all tests
 */
export function tests(workspace: Workspace) {

  /**
   * call multicall
   */
  workspace.test('multicall by non-admin', async (test, {alice, bob, multicall, root}) => {
    // bob isn't admin so he can't call multicall
    let callError;
    try {
      // try catch bacause contract should panick
      await bob.call(
        multicall.accountId,
        'multicall',
        {actions: [ [] ]}
      );
    } catch (error) { callError = error}
    test.true(
      callError.type === "FunctionCallError"
    );
    test.log(`type: "${callError.type}"`);
  });

}
