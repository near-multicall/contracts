import { context, ContractPromise, u128 } from 'near-sdk-as';
import { Buffer } from "assemblyscript-json/util";

@nearBindgen
export class Call { 

  public addr: string;
  public func: string; 
  public args: string; 
  public gas: u64;
  public depo: u128;

}

export function sequential(schedule: Call[]): void {

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

export function parallel(schedule: Call[]): void {

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

// promise1.then(promise2).then(promise3)

// if (promise1.results) { promise2; if (promise2.results) { promise3 } }