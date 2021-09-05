import { context, ContractPromiseBatch, ContractPromise, u128 } from 'near-sdk-as';
import { Buffer } from "assemblyscript-json/util";
import { ContractCall } from './model';


export function sequential(schedule: ContractCall[]): void {

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
  ContractPromiseBatch.create(account_id).transfer(amount);
}


// if (promise1.results) { promise2; if (promise2.results) { promise3 } }