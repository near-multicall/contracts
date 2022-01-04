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
    // spoon hello contract from testnet
    const hello = await root.createAccountFrom({

    });
    root.exists

    // bob isn't admin so he can't call multicall
    try {
      // try catch bacause contract should panick
      await bob.call(
        multicall.accountId,
        'multicall',
        {
          schedules: [
            [],
            [],
            []
          ]
        }
      );
    } catch (error) {}
  });

}
