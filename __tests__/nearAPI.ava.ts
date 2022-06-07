import { Workspace, NEAR, Gas } from 'near-workspaces-ava';
import { getFunctionCallError } from './helpers';


/**
 * function to run all tests
 */
export function tests(workspace: Workspace) {

  /**
   * transfer NEAR
   */
  workspace.test('transfer near by admin', async (test, {alice, bob, multicall, root}) => {
    const oldBalance = await multicall.balance();
    test.log(`initial balance: ${oldBalance.total.toHuman()}`);
    // alice is admin so she can transfer near from multicall
    await alice.call(
      multicall.accountId,
      'near_transfer',
      {
        account_id: alice.accountId,
        amount: NEAR.parse("1").toString() // 1 NEAR
      },
      {
        gas: Gas.parse('5 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );
    const balance  = await multicall.balance();
    test.true(
      // balance will decrease by ~1N (and increase by 30% of gas fees)
      // make sure balance decreased by at least 0.9 $NEAR
      ( oldBalance.total.sub( balance.total ) ).gte( NEAR.parse("900 mN") )
    );
    test.log(`balance: ${balance.total.toHuman()}`);
  });
  workspace.test('transfer all available near by admin', async (test, {alice, bob, multicall, root}) => {
    const oldBalance = await multicall.balance();
    test.log(`initial balance: ${oldBalance.total.toHuman()}`);
    // test if alice can transfer all available balance
    await alice.call(
      multicall.accountId,
      'near_transfer',
      {
        account_id: alice.accountId
      },
      {
        gas: Gas.parse('5 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );
    const balance  = await multicall.balance();
    test.true(
      // only $NEAR reserved for state will remain (and 30% from gas fee)
      // total balance is only slightly more than state staked balance (0.1 NEAR tolerance)
      ( balance.total.sub( balance.stateStaked ) ).lte( NEAR.parse("100 mN") )
    );
    test.log(`balance: ${balance.total.toHuman()}`);
  });

}
