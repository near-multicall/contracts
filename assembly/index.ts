import { context, ContractPromiseBatch, ContractPromise, storage, PersistentMap, u128 } from 'near-sdk-as';
import { JSON } from 'assemblyscript-json';
import { Buffer } from 'assemblyscript-json/util';
import { ContractCall } from './model';
import { StorageCostUtils } from './utils';

const whitelist = new PersistentMap<string, boolean>('a');
const storageCosts = new StorageCostUtils();


export function parallel(schedules: ContractCall[][]): void {
  _is_whitelisted();

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
        const curr_batch: ContractCall[] = batches.get(curr_call.addr);
        curr_batch.push(curr_call);
        batches.set(curr_call.addr, curr_batch);
      } else {
        batches.set(curr_call.addr, [curr_call])
      }
      // do not execute batches with regular schedules
      schedules.splice(i, 1);
    }
  }

  assert(u128.le(totalDeposits, u128.sub(context.accountBalance, get_min_storage_balance())), "insufficient funds");

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
      Buffer.fromString(batchGroups[i][last].args),
      batchGroups[i][last].depo,
      batchGroups[i][last].gas
    );

    // iterativly add function calls to the batch
    for (let j = last - 1; j >= 0; j--) {
      promise = promise.function_call(
        batchGroups[i][j].func,
        Buffer.fromString(batchGroups[i][j].args.replaceAll("\\\"", "\"").replaceAll("\\\\","\\")),
        batchGroups[i][j].depo,
        batchGroups[i][j].gas
      );
    }
  }

  // outer loop is parallel
  for (let i = 0; i < schedules.length; i++) {

    // inner loop is sequential
    _internal_sequential(schedules[i]);

  }

}

export function sequential(schedule: ContractCall[]): void {
  _is_whitelisted();

  assert(schedule.length != 0, "schedule cannot be empty");
  assert(u128.le(schedule[0].depo, context.accountBalance), "insufficient funds");

  _internal_sequential(schedule);

}

function _internal_sequential(schedule: ContractCall[]): void {

  // initial promise
  let promise: ContractPromise = ContractPromise.create(

    schedule[0].addr,
    schedule[0].func,
    Buffer.fromString(schedule[0].args),
    schedule[0].gas,
    schedule[0].depo

  );

  // iterativly add then clause
  for (let i = 1; i < schedule.length; i++) {

    promise = promise.then(

      schedule[i].addr,
      schedule[i].func,
      Buffer.fromString(schedule[i].args.replaceAll("\\\"", "\"").replaceAll("\\\\","\\")),
      schedule[i].gas,
      schedule[i].depo

    );
  }
}

// recover near funds. If amount is 0 then empty all contract funds
export function recover_near(account_id: string, amount: u128 = u128.Zero): void {
  _is_whitelisted();
  if (amount == u128.Zero) {
    // calculate amount reserved for storage
    const minStorageAmt: u128 = get_min_storage_balance();
    amount = u128.sub(context.accountBalance, minStorageAmt);
  }
  ContractPromiseBatch.create(account_id).transfer(amount);
}

export function get_min_storage_balance () : u128 {
  // calculate amount reserved for storage
  const storageLockedAmt: u128 = u128.mul(storageCosts.storage_byte_cost() , u128.fromU64(context.storageUsage));
  return storageLockedAmt;
}

export function whitelist_add(account_ids: string[]): void {
  _is_whitelisted();
  for (let i = 0; i < account_ids.length; i++)
    whitelist.set(account_ids[i], true);
}

export function whitelist_remove(account_ids: string[]): void {
  _is_whitelisted();
  for (let i = 0; i < account_ids.length; i++)
    whitelist.delete(account_ids[i]);
}

export function init(account_ids: string[]): void {
  assert(storage.get<string>("init") == null, "Already initialized");
  // whitelist contract address to allow nested calls
  whitelist.set(context.contractName, true);
  for (let i = 0; i < account_ids.length; i++) {
    whitelist.set(account_ids[i], true);
  }
  storage.set("init", "done");
}


// helper to withdraw from Ref and transfer to DAO
export function withdraw_from_ref(ref_address: string, tokens: string[], receiver_id: string, withdrawal_gas: u64, token_transfer_gas: u64): void {
  _is_whitelisted();

  // Get all results
  let results = ContractPromise.getResults();
  let get_deposits_results = results[results.length - 1];
  // Verifying the remote contract call succeeded.
  if (get_deposits_results.succeeded) {
    // Decoding data from the bytes buffer into the local object.
    let data: JSON.Obj = <JSON.Obj>(JSON.parse(get_deposits_results.buffer));

    for (let i = 0; i < tokens.length; i++) {
      let amountOrNull: JSON.Str | null = data.getString(tokens[i]); // This will return a JSON.Str or null
      if (amountOrNull != null) {
        // use .valueOf() to turn the high level JSON.Str type into a string
        let amount: u128 =  u128.fromString(<string>amountOrNull.valueOf());

        if (u128.gt(amount, u128.Zero)) {
          ContractPromise.create(
            ref_address,
            "withdraw",
            Buffer.fromString(`{"token_id":"${tokens[i]}","amount":"${amount}"}`),
            withdrawal_gas,
            u128.fromString('1')
          ).then(
            tokens[i],
            "ft_transfer",
            Buffer.fromString(`{"receiver_id": "${receiver_id}", "amount": "${amount}"}`),
            token_transfer_gas,
            u128.fromString('1')
          );
        }
      }
    }
  }

}

function _is_whitelisted(): void {
  assert(whitelist.contains(context.predecessor), context.predecessor + " needs to be whitelisted to call this function");
}
