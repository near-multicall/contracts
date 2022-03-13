import { NEAR, Gas, Workspace } from 'near-workspaces-ava';


export function tests(workspace: Workspace) {

  /**
   * add admins
   */
  workspace.test('add admins by non-admin', async (test, {alice, bob, multicall, root}) => {
    let callError: any;
    // bob isn't admin so he can't add admins
    try {
      // try catch bacause contract should panick
      await bob.call(
        multicall.accountId,
        'admins_add',
        {
          account_ids: [bob.accountId]
        },
        {
          gas: Gas.parse('20 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      );
    } catch (error) { callError = error }
    const admins: string[] = await multicall.view('get_admins', {})
    test.true(
      ( admins.includes(alice.accountId) && !admins.includes(bob.accountId) )
      && ( callError.kind.ExecutionError.includes("must be admin to call this function") )
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
      },
      {
        gas: Gas.parse('20 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
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
    let callError: any;
    // bob isn't admin so he can't remove admins
    try {
      // try catch bacause contract should panick
      await bob.call(
        multicall.accountId,
        'admins_remove',
        { account_ids: [alice.accountId] },
        {
          gas: Gas.parse('20 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      );
    } catch (error) { callError = error }
    const admins: string[] = await multicall.view('get_admins', {})
    test.true(
      ( admins.includes(alice.accountId) )
      && ( callError.kind.ExecutionError.includes("must be admin to call this function") )
    );
    test.log(`admins: [${admins}]`);
  });
  workspace.test('remove admins by admin', async (test, {alice, bob, multicall, root}) => {
    let callError: any;
    /**
     * Three cases to test here:
     * 
     * 1- admin removes all admins
     * => should fail, contract must always have an admin
     * 
     * 2- admin removes one of the admins
     * => should succeed. Any admin can remove any other admin
     * 
     * 3- admin removes the same admin that was already removed in step 2
     * => should fail since the admin was removed previously. BUT we should
     * make sure that admin list stays unchanged. This is mainly to test one
     * of our patches
     * 
     */

    // test 1
    const initial_admins: string[] = await multicall.view('get_admins', {});

    try {
      // try catch bacause contract should panick
      await alice.call(
        multicall.accountId,
        'admins_remove',
        { account_ids: initial_admins },
        {
          gas: Gas.parse('200 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      );
    } catch (error) { callError = error }

    let test_1_admins: string[] = await multicall.view('get_admins', {});

    test.true(
      ( test_1_admins.toString() === initial_admins.toString() )
      && ( callError.kind.ExecutionError.includes("contract must have at least one admin") )
    );
    test.log(`admins after test 1: "[${test_1_admins}]"`);

    // test 2
    let deleted_admin: string = multicall.accountId;

    await alice.call(
      multicall.accountId,
      'admins_remove',
      { account_ids: [deleted_admin] },
      {
        gas: Gas.parse('20 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );
    let test_2_admins: string[] = await multicall.view('get_admins', {});

    test.true(
      ! test_2_admins.includes(deleted_admin)
    );
    test.log(`admins: [${test_2_admins}]`);

    // test 3
    try {
      await alice.call(
        multicall.accountId,
        'admins_remove',
        { account_ids: [deleted_admin] },
        {
          gas: Gas.parse('20 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ); 
    } catch (error) { callError = error }
    let test_3_admins: string[] = await multicall.view('get_admins', {});

    test.true(
      ( test_3_admins.toString() === test_2_admins.toString() )
      && ( callError.kind.ExecutionError.includes("The item was not found in the set") )
    );
    test.log(`admins: [${test_3_admins}]`);

  });

}
