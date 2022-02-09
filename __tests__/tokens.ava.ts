import { Workspace, NEAR, Gas } from 'near-workspaces-ava';

const nusdc_address: string = "nusdc.ft-fin.testnet";
const ndai_address: string = "ndai.ft-fin.testnet";
const nusdt_address: string = "nusdt.ft-fin.testnet";

export function tests(workspace: Workspace) {

  /**
   * add tokens to whitelist
   */
  workspace.test('add tokens to whitelist by non-admin', async (test, {alice, bob, multicall, root}) => {
    // bob isn't admin so he can't modify tokens whitelist
    try {
      // try catch bacause contract should panick
      await bob.call(
        multicall.accountId,
        'tokens_add',
        {
          addresses: [nusdc_address]
        },
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      );
    } catch (error) {}
    const tokens: string[] = await multicall.view('get_tokens', {})
    test.true(
      tokens.includes(ndai_address) && !tokens.includes(nusdc_address)
    );
    test.log(`tokens: [${tokens}]`);
  });
  workspace.test('add tokens to whitelist by admin', async (test, {alice, bob, multicall, root}) => {
    // alice is admin so she can modify tokens whitelist
    await alice.call(
      multicall.accountId,
      'tokens_add',
      {
        addresses: [nusdc_address]
      },
      {
        gas: Gas.parse('5 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );
    const tokens: string[] = await multicall.view('get_tokens', {})
    test.true(
      tokens.includes(ndai_address) && tokens.includes(nusdc_address)
    );
    test.log(`tokens: [${tokens}]`);
  });

  /**
   * remove tokens from whitelist
   */
  workspace.test('remove tokens from whitelist by non-admin', async (test, {alice, bob, multicall, root}) => {
    // bob isn't admin so he can't modify tokens whitelist
    try {
      // try catch bacause contract should panick
      await bob.call(
        multicall.accountId,
        'tokens_remove',
        {
          addresses: [ndai_address]
        },
        {
          gas: Gas.parse('5 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      );
    } catch (error) {}
    const tokens: string[] = await multicall.view('get_tokens', {})
    test.true(
      tokens.includes(ndai_address)
    );
    test.log(`tokens: [${tokens}]`);
  });
  workspace.test('remove tokens from whitelist by admin', async (test, {alice, bob, multicall, root}) => {
    // alice is admin so she can modify tokens whitelist
    await alice.call(
      multicall.accountId,
      'tokens_remove',
      {
        addresses: [ndai_address]
      },
      {
        gas: Gas.parse('5 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );
    const tokens: string[] = await multicall.view('get_tokens', {})
    test.true(
      !tokens.includes(ndai_address)
    );
    test.log(`tokens: [${tokens}]`);
  });

}
