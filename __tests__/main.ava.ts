import { Workspace, NEAR, Gas } from 'near-workspaces-ava';
import { tests as adminsTests } from './admins.ava';
import { tests as tokensTests } from './tokens.ava';
import { tests as nearAPITests } from './nearAPI.ava';
import { tests as multicallTests } from './multicall.ava';

const CRONCAT_MANAGER_ADDRESS = "placeholder";
const nusdc_address: string = "nusdc.ft-fin.testnet";
const ndai_address: string = "ndai.ft-fin.testnet";
const nusdt_address: string = "nusdt.ft-fin.testnet";


/**
 * Initialize a new workspace
 */
const workspace = Workspace.init(async ({root}) => {
  const alice = await root.createAccount('alice');
  const bob = await root.createAccount('bob');

  // deploy multicall instance with alice admin
  const multicall = await root.createAndDeploy(
    'multicall',
    'build/multicall/release/contract.wasm',
    {
      method: 'init',
      args: {
        admin_accounts: [alice.accountId],
        croncat_manager: CRONCAT_MANAGER_ADDRESS,
        job_bond: NEAR.parse("1") // 1 NEAR
      },
      gas: Gas.parse("10 Tgas")
    }
  );

  // add nDAI to token whitelist
  await multicall.call(
    multicall.accountId,
    "tokens_add",
    { addresses: [ndai_address] }
  );

  // Return accounts to be available in tests
  return {alice, bob, multicall};
});

// run tests
adminsTests(workspace);
tokensTests(workspace);
nearAPITests(workspace);
multicallTests(workspace);
