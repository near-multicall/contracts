import { Workspace, NEAR, Gas } from 'near-workspaces-ava';
import { tests as adminsTests } from './admins.ava';
import { tests as tokensTests } from './tokens.ava';
import { tests as nearAPITests } from './nearAPI.ava';
import { tests as multicallTests } from './multicall.ava';

const nusdc_address: string = "nusdc.ft-fin.testnet";
const ndai_address: string = "ndai.ft-fin.testnet";
const nusdt_address: string = "nusdt.ft-fin.testnet";


/**
 * Initialize a new workspace
 */
const workspace = Workspace.init(async ({root}) => {
  const alice = await root.createAccount('alice');
  const bob = await root.createAccount('bob');

  // deploy multicall factory with alice admin
  const multicallFactory = await root.createAndDeploy(
    'factory',
    'build/factory/release/contract.wasm',
    {
      method: 'init',
      args: {
        init_owners: [alice.accountId]
      },
      gas: Gas.parse("10 Tgas")
    }
  );

  // set multicall instance creation fee to 0.001 NEAR
  await alice.call(
    multicallFactory.accountId,
    "set_fee",
    { amount: NEAR.parse('1 mN') }
  );

  // add root as dao factory, so we can deploy an instance for alice later
  await alice.call(
    multicallFactory.accountId,
    "factories_add",
    { account_ids: [root.accountId] }
  );

  // create a multicall instance for alice. Alice will be admin
  await alice.call(
    multicallFactory.accountId,
    "create",
    {},
    {
      gas: Gas.parse("70 Tgas"),
      attachedDeposit: NEAR.parse('1') // 1 NEAR, cover fee + initial account storage costs
    }
  );

  const multicall = multicallFactory.getAccount("alice");
  // give multicall 100 NEAR for later testing 
  await multicall.updateAccount({amount: NEAR.parse('100').toString()});

  // add nDAI to token whitelist
  await alice.call(
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
