import { context, ContractPromiseBatch, ContractPromise, storage, PersistentSet, u128, base64, util } from 'near-sdk-as';
import { BatchCall, FtOnTransferArgs, MulticallArgs, JobActivateArgs, JobEntry } from './model';
import { _internal_multicall } from './internal';
import { Jobs } from './jobs';
import { StorageCostUtils } from './utils';

const admins = new PersistentSet<string>('a');
const tokens = new PersistentSet<string>('b');
const KEY_INIT: string = "c";
const KEY_CRONCAT_MANAGER_ADDRESS: string = "d";
const KEY_JOB_BOND: string = "e";
const KEY_JOB_MAP: string = "f";
const KEY_JOB_COUNT: string = "g";


// TODO: code here runs before all function calls
// not all functions need jobs, so only instantiate jobs
// for functions that need it
const _jobs = new Jobs(
  KEY_CRONCAT_MANAGER_ADDRESS,
  KEY_JOB_BOND,
  KEY_JOB_MAP,
  KEY_JOB_COUNT,
  "job_activate_callback",
  "job_delete_callback"
);


/**
 * execute an array of contract calls
 * 
 * @param calls function call batches to execute
 * @returns a promise that aggregates all calls in multicall 
 */
export function multicall (calls: BatchCall[][]): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  // run multicall, return its final promise as result
  _internal_multicall(calls).returnAsResult();
}

/**
 * if previous batch succeeded, run the "on_success" batch
 * if previous batch faild then:
 *   case 1: if fallback batch provided then it will run
 *   case 2: if not, this function will panic
 * 
 * why revert in case 2 ? if there's a promise chain of many safe_then calls,
 * it's expected that if any of them fails, all later safe_then calls should fail as well.
 * 
 * What happens in case 1 ? will execute something else, but as result if that call succeeds
 * then the safe_then calls after it will execute their "on_succeed". KEEP THIS IN MIND
 * 
 * 
 * @param on_success Batch call to run if previous batch succeeded
 * @param on_fail (optional) batch call to run if previous batch failed
 */
export function safe_then (on_success: BatchCall, on_fail: BatchCall = new BatchCall() ): void {
  _is_private();

  // Get all results
  const results = ContractPromise.getResults();
  let is_successful: boolean = true;
  for (let i = 0; i < results.length; i++) {
    if (! results[i].succeeded) {
      is_successful = false;
      break;
    }
  }

  assert(
    (is_successful == true ) || (on_fail.actions.length > 0),
    "previous batch failed, no fallback batch provided"
  );

  // all promises succeeded
  if (is_successful == true) {
    // run on_success batch call
    const promise: ContractPromiseBatch = ContractPromiseBatch.create(on_success.address);

    for (let i = 0; i < on_success.actions.length; i++) {
      promise.function_call(
        on_success.actions[i].func,
        base64.decode(on_success.actions[i].args),
        on_success.actions[i].depo,
        on_success.actions[i].gas
      );
    }

    let return_promise: ContractPromise = <ContractPromise> { id: promise.id }
    return_promise.returnAsResult();
  }
  // a previous promise failed
  else {
    // run fallback batch call
    const promise: ContractPromiseBatch = ContractPromiseBatch.create(on_fail.address);

    for (let i = 0; i < on_fail.actions.length; i++) {
      promise.function_call(
        on_fail.actions[i].func,
        base64.decode(on_fail.actions[i].args),
        on_fail.actions[i].depo,
        on_fail.actions[i].gas
      );
    }

    let return_promise: ContractPromise = <ContractPromise> { id: promise.id }
    return_promise.returnAsResult();
  }
}

/**
 * following functions can be used in callback:
 * 1- multicall
 * 2- job_activate
 * 
 * NEP-141 indicates ft_on_transfer returns the number of unused tokens
 * in string form. We always keep all attached tokens, so we return "0"
 * 
 * 
 * @param sender_id 
 * @param amount 
 * @param msg information on the function to execute 
 * @returns "0"
 */
export function ft_on_transfer (sender_id: string, amount: u128, msg: string): u128 {
  assert(tokens.has(context.predecessor), `${context.predecessor} not on token whitelist`);
  _is_admin(sender_id);

  const methodAndArgs: FtOnTransferArgs = util.parseFromString<FtOnTransferArgs>(msg);

  // decode the respective function arguments
  if (methodAndArgs.function_id == "multicall") {
    const multicallArgs: MulticallArgs = util.parseFromBytes<MulticallArgs>(
      base64.decode(methodAndArgs.args)
    );
    // call multicall
    _internal_multicall(multicallArgs.calls);
  } else if (methodAndArgs.function_id == "job_activate") {
    const jobActivateArgs: JobActivateArgs = util.parseFromBytes<JobActivateArgs>(
      base64.decode(methodAndArgs.args)
    );
    // call job_activate
    _jobs.activate(jobActivateArgs.job_id);
  }

  return u128.Zero;
}

/**
 * send $NEAR. If amount not specified or u128.Max then empty all contract funds. 
 * 
 * @param account_id 
 * @param amount 
 */
export function near_transfer (account_id: string, amount: u128 = u128.Max): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  if (amount == u128.Max) {
    // calculate amount reserved for storage
    const minStorageAmt: u128 = StorageCostUtils.get_min_storage_balance();
    amount = u128.sub(context.accountBalance, minStorageAmt);
  }
  ContractPromiseBatch.create(account_id).transfer(amount);
}

export function admins_add (account_ids: string[]): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  for (let i = 0; i < account_ids.length; i++)
    admins.add(account_ids[i]);
}

export function admins_remove (account_ids: string[]): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  for (let i = 0; i < account_ids.length; i++) {
    admins.delete(account_ids[i]);
  }

  // assert there's at least 1 admin left, otherwise contract can be accidentally bricked
  assert(admins.size > 0, "contract must have at least one admin");
}

export function get_admins (start: i32 = 0, end: i32 = i32.MAX_VALUE): string[] {
  return admins.values().slice(start, end);
}

export function tokens_add (addresses: string[]): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  for (let i = 0; i < addresses.length; i++)
    tokens.add(addresses[i]);
}

export function tokens_remove (addresses: string[]): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  for (let i = 0; i < addresses.length; i++)
    tokens.delete(addresses[i]);
}

export function get_tokens (start: i32 = 0, end: i32 = i32.MAX_VALUE): string[] {
  return tokens.values().slice(start, end);
}

// init contract
export function init (
  admin_accounts: string[],
  croncat_manager: string,
  job_bond: u128
): void {
  assert(storage.get<string>(KEY_INIT) == null, "Already initialized");

  // add contract address as admin to allow nested calls
  admins.add(context.contractName);
  // add rest of admins
  for (let i = 0; i < admin_accounts.length; i++) {
    admins.add(admin_accounts[i]);
  }

  // set croncat manager address
  _jobs.set_croncat_manager(croncat_manager);

  // set job bond
  _jobs.set_bond(job_bond);

  storage.set(KEY_INIT, "done");
}



// Job functions
// 1 - a job is created, anyone can do this
// 2 - admin activates the job
// 3 - jobs can be triggered by CronCat

/**
 * set smart contract address of croncat manager
 * croncat manager has privilege to trigger active jobs
 * 
 * @param address 
 */
 export function set_croncat_manager (address: string): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  _jobs.set_croncat_manager(address);
}

export function get_croncat_manager (): string {
  return _jobs.get_croncat_manager();
}

/**
 * admins can set NEAR amount required to register a job
 * since anyone is able to submit jobs, bond is necessary to protecc from spam
 * 
 * @param amount
 */
 export function job_set_bond (amount: u128): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  _jobs.set_bond(amount);  
}

export function job_get_bond (): u128 {
  return _jobs.get_bond();
}

/**
 * list all registered jobs
 * 
 * @param start 
 * @param end 
 */
export function get_jobs (start: i32 = 0, end: i32 = _jobs.jobMap.length): JobEntry[] {
  return _jobs.get_jobs(start, end);
}

/**
 * register a new job.
 * 
 * @param job_multicalls 
 * @param job_cadence 
 * @param job_trigger_gas 
 * @param job_total_budget 
 * @param job_start_at 
 * @returns 
 */
 export function job_add (
  job_multicalls: MulticallArgs[],
  job_cadence: string,
  job_trigger_gas: u64,
  job_total_budget: u128,
  job_start_at: u64 = context.blockTimestamp
): u32 
{
  // anyone can add jobs if they pay required bond
  return _jobs.add(
    job_multicalls,
    job_cadence,
    job_trigger_gas,
    job_total_budget,
    job_start_at
  );
}

/**
 * create a croncat task for a job and set it to active
 * 
 * @param job_id 
 */
export function job_activate (job_id: u32): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  _jobs.activate(job_id);
}

export function job_activate_callback (job_id: u32): void {
  _is_private();

  _jobs.activate_callback(job_id);
}

/**
 * pause a job so it cannot be triggered
 * 
 * @param job_ids  
 */
export function jobs_pause (job_ids: u32[]): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  _jobs.pause(job_ids);
}

/**
 * resume a job to be ready for execution
 * 
 * @param job_ids 
 */
 export function jobs_resume (job_ids: u32[]): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  _jobs.resume(job_ids);
}

/**
 * edit job params controlled by multicall.
 * for params controlled by croncat, it's safer
 * to disable the job and create another one 
 * 
 * @param job_id 
 * @param job_multicalls 
 * @param job_total_budget 
 * @param job_start_at 
 * @param job_is_active 
 */
export function job_edit (
  job_id: u32,
  job_multicalls: MulticallArgs[],
  job_total_budget: u128,
  job_start_at: u64,
  job_is_active: boolean
): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  _jobs.edit(
    job_id,
    job_multicalls,
    job_total_budget,
    job_start_at,
    job_is_active
  );
}

/**
 * multicall jobs can take lots of memory, thus locking part of the
 * contract funds. We can free up space by deleting jobs.
 * Also delete the job's task on croncat
 * 
 * @param job_id 
 */
export function job_delete (
  job_id: u32,
  delete_on_croncat: boolean = true
): void {
  _is_admin(context.predecessor);
  _assert_deposit();

  _jobs.delete(job_id, delete_on_croncat);
}

export function job_delete_callback (job_id: u32): void {
  _is_private();

  _jobs.delete_callback(job_id);
}

/**
 * trigger execution of an active job
 * 
 * @param job_id 
 */
export function job_trigger (job_id: u32): void {
  _is_croncat_manager(context.predecessor);

  // internal method returns a promise as result
  _jobs.trigger(job_id);
}



// access modifiers

/**
 * panic if account_id is not admin
 * 
 * @param account_id 
 */
function _is_admin (account_id: string): void {
  assert(
    admins.has(account_id),
    `${account_id} must be admin to call this function`
  );
}

/**
 * panic if attached deposit is zero.
 * security in case DAOs add an EOA admin to the contract
 * 
 */
function _assert_deposit (): void {
  assert(
    u128.gt( context.attachedDeposit, u128.Zero ),
    `attached deposit must be more than zero`
  );
}

/**
 * panick if account_id isn't the croncat manager contract
 * 
 * @param account_id 
 */
 function _is_croncat_manager (account_id: string): void {
  assert(
    get_croncat_manager() == account_id,
    `${account_id} must be croncat manager to call this function`
  );
}

/**
 * panick if caller isn't this contract's address
 */
 function _is_private (): void {
  assert(
    context.contractName == context.predecessor,
    `Method is private`
  );
}
