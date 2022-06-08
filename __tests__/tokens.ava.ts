import { NEAR, Gas } from 'near-workspaces';
import { NearWorkspacesTest } from './helpers';


const nusdc_address: string = "nusdc.ft-fin.testnet";
const ndai_address: string = "ndai.ft-fin.testnet";
const nusdt_address: string = "nusdt.ft-fin.testnet";

export function tests(test: NearWorkspacesTest) {

  /**
   * add tokens to whitelist
   */
  test('add tokens to whitelist by admin', async t => {
    const { alice, multicall } = t.context.accounts;
    // alice is admin so she can modify tokens whitelist
    await alice.call(
      multicall.accountId,
      'tokens_add',
      {
        addresses: [nusdc_address]
      },
      {
        gas: Gas.parse('10 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );
    const tokens: string[] = await multicall.view('get_tokens', {})
    t.true(
      tokens.includes(ndai_address) && tokens.includes(nusdc_address)
    );
    t.log(`tokens: [${tokens}]`);
  });

  /**
   * remove tokens from whitelist
   */
  test('remove tokens from whitelist by admin', async t => {
    const { alice, multicall } = t.context.accounts;
    // alice is admin so she can modify tokens whitelist
    await alice.call(
      multicall.accountId,
      'tokens_remove',
      {
        addresses: [ndai_address]
      },
      {
        gas: Gas.parse('10 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );
    const tokens: string[] = await multicall.view('get_tokens', {})
    t.true(
      !tokens.includes(ndai_address)
    );
    t.log(`tokens: [${tokens}]`);
  });

}
