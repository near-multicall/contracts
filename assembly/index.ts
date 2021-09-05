import { context, ContractPromiseBatch, ContractPromise, PersistentMap, u128 } from 'near-sdk-as';
import { Buffer } from "assemblyscript-json/util";
import { ContractCall } from './model';

const whitelist = new PersistentMap<string, boolean>('a');
whitelist.set(context.contractName, true);
whitelist.set("chluff1.testnet", true);


export function sequential(schedule: ContractCall[]): void {
  assert(whitelist.contains(context.predecessor), context.predecessor + " needs to be whitelisted to call this function");

  let totalDeposits = u128.Zero;
  for (let i = 0; i < schedule.length; i++)
    totalDeposits = u128.add(totalDeposits, schedule[i].depo);

  assert(u128.le(totalDeposits, context.attachedDeposit), "insufficient attached deposit");

  assert(schedule.length !== 0, "schedule cannot be empty");

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

export function whitelist_add(account_id: string): void {
  assert(whitelist.contains(context.predecessor), context.predecessor + " needs to be whitelisted to call this function");
  whitelist.set(account_id, true);
}

export function whitelist_remove(account_id: string): void {
  assert(whitelist.contains(context.predecessor), context.predecessor + " needs to be whitelisted to call this function");
  whitelist.delete(account_id);
}
