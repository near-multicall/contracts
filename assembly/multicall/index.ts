import { context, ContractPromiseBatch, ContractPromise, storage, PersistentSet, u128, base64, util } from 'near-sdk-as';
import { ContractCall, FtOnTransferArgs, MulticallArgs } from './model';
import { StorageCostUtils } from './utils';

const admins = new PersistentSet<string>('a');
const tokens = new PersistentSet<string>('b');
const KEY_INIT: string = "c";
const storageCosts = new StorageCostUtils();


/**
 * execute an array of contract calls
 * 
 * @param schedules 
 */
export function multicall(schedules: ContractCall[][]): void {
  _is_admin(context.predecessor);
  _internal_multicall(schedules);
}

function _internal_multicall(schedules: ContractCall[][]): void {
  assert(schedules.length != 0, "schedules cannot be empty");

  // group 1-element schedules with same target address into batch calls for gas efficiency
  const batches = new Map<string, ContractCall[]>();

  // check for sufficient funds (Sum of all first sequential calls <= account balance minus funds reserved for storage)
  let totalDeposits = u128.Zero;
  for (let i = schedules.length - 1; i >= 0; i--) {
    // cannot have empty schedule
    assert(schedules[i].length != 0, `schedules[${i}] cannot be empty`);
    totalDeposits = u128.add(totalDeposits, schedules[i][0].depo);

    if (schedules[i].length == 1) {
      const curr_call: ContractCall = schedules[i][0];
      if (batches.has(curr_call.addr)) {
        batches.get(curr_call.addr).push(curr_call);
      } else {
        batches.set(curr_call.addr, [curr_call])
      }
      // do not execute batches with regular schedules
      schedules.splice(i, 1);
    }
  }

  assert(u128.le(totalDeposits, u128.sub(context.accountBalance, storageCosts.get_min_storage_balance())), "funds insufficient for attached deposits");

  const batchGroups: ContractCall[][] = batches.values();

  // execute batches
  for (let i = 0; i < batches.size; i++) {

    if (batchGroups[i].length <= 1) {
      schedules.push(batchGroups[i]);
      continue;
    }

    // initial promise
    const last: i32 = batchGroups[i].length - 1;
    let promise: ContractPromiseBatch = ContractPromiseBatch.create(batchGroups[i][last].addr).function_call(
      batchGroups[i][last].func,
      base64.decode(batchGroups[i][last].args),
      batchGroups[i][last].depo,
      batchGroups[i][last].gas
    );

    // iterativly add function calls to the batch
    for (let j = last - 1; j >= 0; j--) {
      promise = promise.function_call(
        batchGroups[i][j].func,
        base64.decode(batchGroups[i][j].args),
        batchGroups[i][j].depo,
        batchGroups[i][j].gas
      );
    }
  }

  // outer loop is parallel
  for (let i = 0; i < schedules.length; i++) {

    // inner loop is sequential
    _sequential(schedules[i]);

  }

}

/**
 * turn an array of contract calls into a promise chain 
 */
function _sequential(schedule: ContractCall[]): void {

  // initial promise
  let promise: ContractPromise = ContractPromise.create(

    schedule[0].addr,
    schedule[0].func,
    base64.decode(schedule[0].args),
    schedule[0].gas,
    schedule[0].depo

  );

  // iterativly add then clause
  for (let i = 1; i < schedule.length; i++) {

    promise = promise.then(

      schedule[i].addr,
      schedule[i].func,
      base64.decode(schedule[i].args),
      schedule[i].gas,
      schedule[i].depo

    );
  }
}

/**
 * following functions can be used in callback:
 * 1- multicall()
 * 
 * @param sender_id 
 * @param amount 
 * @param msg 
 * @returns 
 */
export function ft_on_transfer(sender_id: string, amount: u128, msg: string): u128 {
  assert(tokens.has(context.predecessor), `${context.predecessor} not on token whitelist`);
  _is_admin(sender_id);

  const methodAndArgs: FtOnTransferArgs = util.parseFromString<FtOnTransferArgs>(msg);

  // decode the respective function arguments
  if (methodAndArgs.function_id == "multicall") {
    const multicallArgs : MulticallArgs = util.parseFromBytes<MulticallArgs>(base64.decode(methodAndArgs.args));
    // call multicall
    _internal_multicall(multicallArgs.schedules);
  } else {
    // invalid action, reimburse full amount
    return amount;  
  }
  
  return u128.Zero;
}

/**
 * send $NEAR
 * If amount is 0 then empty all contract funds. 
 * 
 * TODO: receive array of recipients and amounts
 * 
 * @param account_id 
 * @param amount 
 */
export function near_transfer(account_id: string, amount: u128 = u128.Max): void {
  _is_admin(context.predecessor);
  if (amount == u128.Max) {
    // calculate amount reserved for storage
    const minStorageAmt: u128 = storageCosts.get_min_storage_balance();
    amount = u128.sub(context.accountBalance, minStorageAmt);
  }
  ContractPromiseBatch.create(account_id).transfer(amount);
}

export function admins_add(account_ids: string[]): void {
  _is_admin(context.predecessor);
  for (let i = 0; i < account_ids.length; i++)
    admins.add(account_ids[i]);
}

export function admins_remove(account_ids: string[]): void {
  _is_admin(context.predecessor);
  for (let i = 0; i < account_ids.length; i++)
    admins.delete(account_ids[i]);
}

export function get_admins(start: i32 = 0, end: i32 = i32.MAX_VALUE): string[] {
  return admins.values().slice(start, end);
}

export function tokens_add(addresses: string[]): void {
  _is_admin(context.predecessor);
  for (let i = 0; i < addresses.length; i++)
    tokens.add(addresses[i]);
}

export function tokens_remove(addresses: string[]): void {
  _is_admin(context.predecessor);
  for (let i = 0; i < addresses.length; i++)
    tokens.delete(addresses[i]);
}

export function get_tokens(start: i32 = 0, end: i32 = i32.MAX_VALUE): string[] {
  return tokens.values().slice(start, end);
}

// init contract
export function init(admin_accounts: string[]): void {
  assert(storage.get<string>(KEY_INIT) == null, "Already initialized");

  // add contract address as admin to allow nested calls
  admins.add(context.contractName);
  // add rest of admins
  for (let i = 0; i < admin_accounts.length; i++) {
    admins.add(admin_accounts[i]);
  }

  storage.set(KEY_INIT, "done");
}


// access modifiers

/**
 * panick if account_id is not admin
 * 
 * @param account_id 
 */
function _is_admin(account_id: string): void {
  assert(
    admins.has(account_id),
    `${account_id} must be admin to call this function`
  );
}
