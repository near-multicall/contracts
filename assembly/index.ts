import { context, ContractPromiseBatch, ContractPromise, storage, PersistentMap, u128 } from 'near-sdk-as';
import { JSON } from 'assemblyscript-json';
import { Buffer } from 'assemblyscript-json/util';
import { ContractCall } from './model';

const whitelist = new PersistentMap<string, boolean>('a');
whitelist.set(context.contractName, true);


export function sequential(schedule: ContractCall[]): void {
  _is_whitelisted();

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
  _is_whitelisted();

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
  _is_whitelisted();
  ContractPromiseBatch.create(account_id).transfer(amount);
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
