import { Workspace, NEAR, Gas, NearAccount } from 'near-workspaces-ava';
import { tests as adminsTests } from './admins.ava';
import { tests as tokensTests } from './tokens.ava';
import { tests as nearAPITests } from './nearAPI.ava';
import { tests as multicallTests } from './multicall.ava';

const nusdc_address: string = "nusdc.ft-fin.testnet";
const ndai_address: string = "ndai.ft-fin.testnet";
const nusdt_address: string = "nusdt.ft-fin.testnet";
const job_bond_amount: NEAR = NEAR.parse("1 mN");


/**
 * Initialize a new workspace
 */
const workspace = Workspace.init(async ({root}) => {
  
  // create initial accounts & contracts
  const [alice, bob, testHelper, testToken, croncat, multicallFactory]: NearAccount[] = await Promise.all([
    // alice is a multicall admin
    root.createAccount('alice'),
    // bob is NOT an admin
    root.createAccount('bob'),
    // special contract with helper methods for easy testing
    root.createAndDeploy(
      'helper',
      'build/test_helper_release.wasm'
    ),
    // test token, for implementation see: https://github.com/ref-finance/ref-contracts/blob/22099fa4476f1d6dd94573063307783902568d63/test-token/src/lib.rs
    root.createAndDeploy(
      'test_token',
      '__tests__/test_contracts/test_token.wasm',
      {
        method: 'new',
        args: {},
        gas: Gas.parse("10 Tgas")
      }
    ),
    // instance of croncat manager to test jobs. Refer to: https://github.com/CronCats/contracts/tree/main/manager
    root.createAndDeploy(
      'croncat',
      '__tests__/test_contracts/croncat_manager.wasm',
      {
        method: 'new',
        args: {},
        gas: Gas.parse("10 Tgas")
      }
    ),
    // multicall factory, with root as admin
    root.createAndDeploy(
      'factory',
      'build/factory_release.wasm',
      {
        method: 'init',
        args: {
          init_owners: [root.accountId],
          // set multicall instance creation fee to 0.001 NEAR
          init_fee: NEAR.parse('1 mN'),
          // add root as dao factory, so we can deploy an instance for alice later
          init_factories: [root.accountId]
        },
        gas: Gas.parse("10 Tgas")
      }
    )
  ]);

  // create a multicall instance for alice. Alice will be admin
  // pre-load multicall contract with 2 NEAR (minus factory fee) for state storage
  await alice.call(
    multicallFactory.accountId,
    "create",
    { 
      multicall_init_args: {
        admin_accounts: [alice.accountId],
        croncat_manager: croncat.accountId,
        job_bond: job_bond_amount
      }
    },
    {
      gas: Gas.parse("70 Tgas"),
      attachedDeposit: NEAR.parse('2') // 2 NEAR
    }
  );

  const multicall = multicallFactory.getAccount("alice");

  // add nDAI to token whitelist
  await alice.call(
    multicall.accountId,
    "tokens_add",
    { addresses: [ndai_address] },
    {
      gas: Gas.parse('5 Tgas'),
      attachedDeposit: NEAR.from('1') // 1 yocto
    }
  );

  // Return accounts to be available in tests
  return {alice, bob, multicall, testHelper, testToken, croncat};
});

// run tests
adminsTests(workspace);
tokensTests(workspace);
nearAPITests(workspace);
multicallTests(workspace);
