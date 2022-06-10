import { Worker, NEAR, Gas, NearAccount } from 'near-workspaces';
import anyTest from 'ava';
import { NearWorkspacesTest } from './helpers';
import { tests as onlyAdminMethodsTests } from './onlyAdminMethods.ava';
import { tests as adminsTests } from './admins.ava';
import { tests as tokensTests } from './tokens.ava';
import { tests as nearAPITests } from './nearAPI.ava';
import { tests as multicallTests } from './multicall.ava';
import { tests as jobTests } from './jobs.ava';


const nusdc_address: string = "nusdc.ft-fin.testnet";
const ndai_address: string = "ndai.ft-fin.testnet";
const nusdt_address: string = "nusdt.ft-fin.testnet";
const job_bond_amount: NEAR = NEAR.parse("1 mN");


const test = <NearWorkspacesTest> anyTest;

// run before each test: initialization
test.beforeEach(async t => {
  /**
   * Initialize a new workspace
   */
  const worker = await Worker.init();
  const root = worker.rootAccount;
    
  // create initial accounts & contracts
  const [alice, bob, testHelper, testToken, croncat, multicallFactory]: NearAccount[] = await Promise.all([
    // alice is a multicall admin
    root.createAccount(`alice.${root.accountId}`),
    // bob is NOT an admin
    root.createAccount(`bob.${root.accountId}`),
    // special contract with helper methods for easy testing
    root.createAndDeploy(
      `helper.${root.accountId}`,
      'build/test_helper_release.wasm'
    ),
    // test token, for implementation see: https://github.com/ref-finance/ref-contracts/blob/22099fa4476f1d6dd94573063307783902568d63/test-token/src/lib.rs
    root.createAndDeploy(
      `test_token.${root.accountId}`,
      '__tests__/test_contracts/test_token.wasm',
      {
        method: 'new',
        args: {},
        gas: Gas.parse("10 Tgas")
      }
    ),
    // instance of croncat manager to test jobs. Refer to: https://github.com/CronCats/contracts/tree/main/manager
    root.createAndDeploy(
      `croncat.${root.accountId}`,
      '__tests__/test_contracts/croncat_manager.wasm',
      {
        method: 'new',
        args: {},
        gas: Gas.parse("10 Tgas")
      }
    ),
    // multicall factory, with root as admin
    root.createAndDeploy(
      `factory.${root.accountId}`,
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

  // further contract initializations
  await Promise.all([
    // create a multicall instance for alice. Alice will be admin
    // pre-load multicall contract with 2 NEAR (minus factory fee) for state storage
    alice.call(
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
    ),
    // register croncat account to be agent, too.
    croncat.call(
      croncat.accountId,
      "register_agent",
      {},
      {
        gas: Gas.parse("10 Tgas"),
        attachedDeposit: NEAR.parse('1') // 1 NEAR
      }
    )
  ]);

  const multicall = multicallFactory.getSubAccount("alice");

  // add nDAI to token whitelist
  await alice.call(
    multicall.accountId,
    "tokens_add",
    { addresses: [ndai_address] },
    {
      gas: Gas.parse('10 Tgas'),
      attachedDeposit: NEAR.from('1') // 1 yocto
    }
  );

  // worker to run the test on
  t.context.worker = worker;
  // accounts to be available in tests
  t.context.accounts = {alice, bob, multicall, testHelper, testToken, croncat};
});

// run after each test: shut down the worker
test.afterEach(async t => {
  // Stop Sandbox server
  await t.context.worker.tearDown().catch(error => {
    console.log('Failed to tear down the worker:', error);
  });
});

// run tests
onlyAdminMethodsTests(test);
adminsTests(test);
tokensTests(test);
nearAPITests(test);
multicallTests(test);
jobTests(test);
