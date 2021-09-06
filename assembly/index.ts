import { context, ContractPromiseBatch, ContractPromise, storage, PersistentMap, u128 } from 'near-sdk-as';
import { Buffer } from "assemblyscript-json/util";
import { ContractCall } from './model';

const whitelist = new PersistentMap<string, boolean>('a');
whitelist.set(context.contractName, true);


export function sequential(schedule: ContractCall[]): void {
  assert(whitelist.contains(context.predecessor), context.predecessor + " needs to be whitelisted to call this function");

  assert(schedule.length !== 0, "schedule cannot be empty");

  assert(u128.le(schedule[0].depo, context.accountBalance), "insufficient funds");

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

export function parallel(schedule: ContractCall[]): void {
  assert(whitelist.contains(context.predecessor), context.predecessor + " needs to be whitelisted to call this function");

  assert(schedule.length !== 0, "schedule cannot be empty");

  let totalDeposits = u128.Zero;
  for (let i = 0; i < schedule.length; i++)
    totalDeposits = u128.add(totalDeposits, schedule[i].depo);

  assert(u128.le(totalDeposits, context.accountBalance), "insufficient funds");

  for (let i = 0; i < schedule.length; i++) {

    ContractPromise.create(
      schedule[i].addr,
      schedule[i].func,
      Buffer.fromString(schedule[i].args.replaceAll("\\\"", "\"").replaceAll("\\\\","\\")),
      schedule[i].gas,
      schedule[i].depo
    );

  }
}

// recover near funds
export function recover_near(account_id: string, amount: u128): void {
  assert(whitelist.contains(context.predecessor), context.predecessor + " needs to be whitelisted to call this function");
  ContractPromiseBatch.create(account_id).transfer(amount);
}

export function whitelist_add(account_ids: string[]): void {
  assert(whitelist.contains(context.predecessor), context.predecessor + " needs to be whitelisted to call this function");
  for (let i = 0; i < account_ids.length; i++)
    whitelist.set(account_ids[i], true);
}

export function whitelist_remove(account_ids: string[]): void {
  assert(whitelist.contains(context.predecessor), context.predecessor + " needs to be whitelisted to call this function");
  for (let i = 0; i < account_ids.length; i++)
    whitelist.delete(account_ids[i]);
}

export function init(account_ids: string[]): void {
  assert(storage.get<string>("init") == null, "Already initialized");
  for (let i = 0; i < account_ids.length; i++) {
    whitelist.set(account_ids[i], true);
  }
  storage.set("init", "done");
}
