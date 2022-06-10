import { NEAR, Gas } from 'near-workspaces';
import { getFunctionCallError, NearWorkspacesTest, encodeBase64 } from './helpers';


/**
 * function to run all tests
 */
export function tests(test: NearWorkspacesTest) {

  /**
   * add a new job
   */
  test('anyone can add jobs', async t => {
    const { alice, bob, multicall, testHelper } = t.context.accounts;
    let callError: any;
    let current_jobs: any[];
    // args to be used in job_add
    const job_add_args = {
      job_multicalls: [
        {
          calls: [
            [
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAxIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  },
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAxIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              },
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAxIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              }
            ],
            [
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAxIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              }
            ]
          ]
        },
        {
          calls: [
            [
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAyIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  },
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAyIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              },
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAyIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              }
            ],
            [
              {
                address: "hello.lennczar.testnet",
                actions: [
                  {
                    func: "hello",
                    args: "eyJ0aGluZyI6Im11bHRpY2FsbCAyIn0=",
                    gas: "10000000000000",
                    depo: "0"
                  }
                ]
              }
            ]
          ]
        }
      ],
      job_cadence: "0 * * * * *",
      job_trigger_gas: "70000000000000",
      job_total_budget: "1000000000000000000000000"
    }

    // get all jobs, and required job bond amount
    const bond_amount: string = await multicall.view("get_job_bond");
    
    // bob isn't admin but should be able to add new jobs
    // 1. try with invalid bond amount => should fail
    try {
      const job_id: number = await bob.call(
        multicall.accountId,
        "job_add",
        job_add_args,
        {
          gas: Gas.parse('15 Tgas'),
          attachedDeposit: (BigInt(bond_amount) - BigInt("1")).toString() // 1 yocto less than bond amount
        }
      ); 
    } catch (error: any) { callError = getFunctionCallError(error) }

    t.true( callError.includes("attached deposit must be greater or equal than the required bond") );
    t.log(`invalid job bond error: [${callError}]`);

    // 2. try with valid bond amount => should succeed
    // we add 3 jobs by 3 different accounts
    const job_ids: any[] = await Promise.all([
      alice.call(
        multicall.accountId,
        "job_add",
        job_add_args,
        {
          gas: Gas.parse('15 Tgas'),
          attachedDeposit: bond_amount
        }
      ),
      testHelper.call(
        multicall.accountId,
        "job_add",
        job_add_args,
        {
          gas: Gas.parse('15 Tgas'),
          attachedDeposit: bond_amount
        }
      ),
      bob.call(
        multicall.accountId,
        "job_add",
        job_add_args,
        {
          gas: Gas.parse('15 Tgas'),
          attachedDeposit: bond_amount
        }
      )
    ]);

    t.true(
      // make sure job IDs includes 0, 1 and 2
      job_ids.length === 3
      && job_ids.every((job_id, i) => job_ids.includes(i))
    );
    t.log(`job_ids: [${job_ids}]`);

    // delete job 0
    await alice.call(
      multicall.accountId,
      "job_delete",
      {
        job_id: 0,
        delete_on_croncat: false
      },
      {
        gas: Gas.parse('30 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );

    current_jobs = await multicall.view("get_jobs");
    const current_job_ids: number[] = current_jobs.map(job => job.id);
    // make sure job IDs are 1 and 2 (we deleted 0)
    t.true(
      current_job_ids.length === 2
      && (current_job_ids.includes(1) && current_job_ids.includes(2))
    );
    t.log(`job_ids: [${job_ids}]`);

    // Try re-deleting job 0
    try {
      await alice.call(
        multicall.accountId,
        "job_delete",
        {
          job_id: 0,
          delete_on_croncat: false
        },
        {
          gas: Gas.parse('15 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      );
    } catch (error: any) { callError = getFunctionCallError(error) }

    t.true(
      // failed because job 0 already deleted in previous step
      callError.includes("is not present in the storage")
    );
    t.log(`callError re-deleting job 0: "${callError}"`);

    // edit job 1, increase number of multicalls
    const job_1 = current_jobs.filter(jobEntry => jobEntry.id === 1).map(jobEntry => jobEntry.job)[0];
    await alice.call(
      multicall.accountId,
      "job_edit",
      { 
        job_id: 1,
        job_multicalls: [job_1.multicalls[0], ...job_1.multicalls], // now job has 2 multicalls
        job_total_budget: job_1.croncat_budget,
        job_start_at: job_1.start_at,
        job_is_active: false
      },
      {
        gas: Gas.parse('30 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );
    current_jobs = await multicall.view("get_jobs");
    const job_1_multicalls = current_jobs.filter(jobEntry => jobEntry.id === 1).map(jobEntry => jobEntry.job.multicalls)[0];
    t.true( job_1_multicalls.length === 3 );
    t.log(`post-edit job 1 multicalls: [${job_1_multicalls}]`);

    // 5. activate job 1 & 2
    // Problem: gas cost on Sandbox is higher than mainnet & testnet
    // some functions with hardcoded gas allowance are impossible to run
    /*
    const result = await Promise.all([
      alice.call(
        multicall.accountId,
        "job_activate",
        { job_id: 1 }, // activate job 1
        {
          gas: Gas.parse('300 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      ),
      alice.call(
        multicall.accountId,
        "job_activate",
        { job_id: 2 }, // activate job 1
        {
          gas: Gas.parse('300 Tgas'),
          attachedDeposit: NEAR.from('1') // 1 yocto
        }
      )
    ]);

    current_jobs = await multicall.view("get_jobs");
    t.true(
      current_jobs.every(jobEntry => {
        const job = jobEntry.job;
        // make sure jobs are active and have correspondant tasks on croncat
        return (job.is_active === true) && (job.croncat_hash !== "")
      }) 
    );
    t.log(`current_jobs: [${current_jobs}]`);
    */

    // 6. TODO: delete job 1 (from croncat as well)
    /*
    await alice.call(
      multicall.accountId,
      "job_delete",
      { job_id: 1 },
      {
        gas: Gas.parse('150 Tgas'),
        attachedDeposit: NEAR.from('1') // 1 yocto
      }
    );
    */

    // 7. TODO: trigger job 2

  });

  // TODO: test callbacks not callable by bob nor alice

}
