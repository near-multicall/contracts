import { NEAR, Gas, BN } from 'near-workspaces';
import { NearWorkspacesTest } from './helpers';


/**
 * function to run all tests
 */
export function tests(test: NearWorkspacesTest) {

  /**
   * transfer NEAR
   */
  test('transfer near by admin', async t => {
    const { alice, multicall } = t.context.accounts;
    const oldBalance = await multicall.balance();
    t.log(`initial balance: ${oldBalance.total.toHuman()}`);
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
    t.true(
      // balance will decrease by ~1N (and increase by 30% of gas fees)
      // make sure balance decreased by at least 0.9 $NEAR
      BigInt( oldBalance.total.sub( balance.total ).toString() ) >= BigInt( NEAR.parse("900 mN").toString() )
    );
    t.log(`balance: ${balance.total.toHuman()}`);
  });
  test('transfer all available near by admin', async t => {
    const { alice, multicall } = t.context.accounts;
    const oldBalance = await multicall.balance();
    t.log(`initial balance: ${oldBalance.total.toHuman()}`);
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
    t.true(
      // only $NEAR reserved for state will remain (and 30% from gas fee)
      // total balance is only slightly more than state staked balance (0.1 NEAR tolerance)
      BigInt( balance.total.sub( balance.stateStaked ).toString() ) <= BigInt( NEAR.parse("100 mN").toString() )
    );
    t.log(`balance: ${balance.total.toHuman()}`);
  });

}
