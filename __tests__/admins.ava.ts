import { Workspace } from 'near-workspaces-ava';


export function tests(workspace: Workspace) {

  /**
   * add admins
   */
  workspace.test('add admins by non-admin', async (test, {alice, bob, multicall, root}) => {
    // bob isn't admin so he can't add admins
    try {
      // try catch bacause contract should panick
      await bob.call(
        multicall.accountId,
        'admins_add',
        {
          account_ids: [bob.accountId]
        }
      );
    } catch (error) {}
    const admins: string[] = await multicall.view('get_admins', {})
    test.true(
      admins.includes(alice.accountId) && !admins.includes(bob.accountId)
    );
    test.log(`admins: [${admins}]`);
  });
  workspace.test('add admins by admin', async (test, {alice, bob, multicall, root}) => {
    // alice is admin so she can add bob
    await alice.call(
      multicall.accountId,
      'admins_add',
      {
        account_ids: [bob.accountId]
      }
    );
    const admins: string[] = await multicall.view('get_admins', {})
    test.true(
      admins.includes(alice.accountId) && admins.includes(bob.accountId)
    );
    test.log(`admins: [${admins}]`);
  });

  /**
   * remove admins
   */
  workspace.test('remove admins by non-admin', async (test, {alice, bob, multicall, root}) => {
    // bob isn't admin so he can't remove admins
    try {
      // try catch bacause contract should panick
      await bob.call(
        multicall.accountId,
        'admins_remove',
        {
          account_ids: [alice.accountId]
        }
      );
    } catch (error) {}
    const admins: string[] = await multicall.view('get_admins', {})
    test.true(
      admins.includes(alice.accountId)
    );
    test.log(`admins: [${admins}]`);
  });
  workspace.test('remove admins by admin', async (test, {alice, bob, multicall, root}) => {
    // alice is admin so she can remove admins
    await alice.call(
      multicall.accountId,
      'admins_remove',
      {
        account_ids: [alice.accountId]
      }
    );
    const admins: string[] = await multicall.view('get_admins', {})
    test.true(
      !admins.includes(alice.accountId)
    );
    test.log(`admins: [${admins}]`);
  });

}
