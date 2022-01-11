// use PersistentSet for whitelists
// check if only pushing is enough on multicall map for batches (L45 & L46)
// TODO: use enums as storage keys, parse string.fromCharCode(97 + "YOUR_ENUM")

import { context, storage, PersistentSet, ContractPromiseBatch, ContractPromise, u128, base64, util } from 'near-sdk-as';

const CODE: StaticArray<u8> = includeBytes("../../build/multicall/release/contract.wasm");

const owners = new PersistentSet<string>('a');
const dao_factories = new PersistentSet<string>('b');
const users = new PersistentSet<string>('c');
const KEY_INIT: string = "d";
const KEY_FEE: string = "e";

// Gas spent on the call & account creation.
const CREATE_CALL_GAS: u64 = 75_000_000_000_000;
// Gas allocated on the callback.
const ON_CREATE_CALL_GAS: u64 = 10_000_000_000_000;



export function init(init_owners: string[]): void {
  assert(storage.get<string>(KEY_INIT) == null, "Already initialized");

  // add owners
  for (let i = 0; i < init_owners.length; i++) {
    owners.add(init_owners[i]);
  }
  // set contract to initialized 
  storage.set(KEY_INIT, "done");
}

/**
 * NEAR amount required to create a multicall instance
 * 
 * @param amount
 */
 export function set_fee (amount: u128): void {
  _is_owner(context.predecessor);
  storage.set<u128>(KEY_FEE, amount);  
}

export function get_fee (): u128 {
  return storage.getSome<u128>(KEY_FEE);
}

export function owners_add(account_ids: string[]): void {
  _is_owner(context.predecessor);

  for (let i = 0; i < account_ids.length; i++) {
    owners.add(account_ids[i]);
  }
}

export function owners_remove(account_ids: string[]): void {
  _is_owner(context.predecessor);

  for (let i = 0; i < account_ids.length; i++) {
    owners.delete(account_ids[i]);
  }
}

export function get_owners(): string[] {
  return owners.values();
}

export function factories_add(account_ids: string[]): void {
  _is_owner(context.predecessor);

  for (let i = 0; i < account_ids.length; i++) {
    dao_factories.add(account_ids[i]);
  }
}

export function factories_remove(account_ids: string[]): void {
  _is_owner(context.predecessor);

  for (let i = 0; i < account_ids.length; i++) {
    dao_factories.delete(account_ids[i]);
  }
}

export function get_factories(): string[] {
  return dao_factories.values();
}

export function get_number_users(): i32 {
  return users.values().length;
}

export function get_users(start: i32 = 0, end: i32 = i32.MAX_VALUE): string[] {
  return users.values().slice(start, end);
}

// TODO: automatically infer arguments, except for job bond fee
export function create(args: string, public_key: string = ""): ContractPromiseBatch {
  _is_dao(context.predecessor);

  // get sub-account name (exp: potato.sputnik-dao.near => potato)
  const name: string = context.predecessor.substring(0, context.predecessor.indexOf("."));
  const account_id: string = `${name}.${context.contractName}`;
  let promise = ContractPromiseBatch.create(account_id)
    .create_account()
    .deploy_contract(Uint8Array.wrap(changetype<ArrayBuffer>(CODE)))
    .transfer(u128.sub(context.attachedDeposit, get_fee()));
  if (public_key != "") {
    promise = promise.add_full_access_key(util.stringToBytes(public_key));
  }
  promise = promise.function_call(
      "init",
      base64.decode(args),
      u128.Zero,
      context.prepaidGas - CREATE_CALL_GAS - ON_CREATE_CALL_GAS
    )
    .then(context.contractName).function_call(
      "on_create",
      util.stringToBytes(
        '{' +
        `"account_id":"${account_id}",` +
        `"attached_deposit":"${context.attachedDeposit.toString()}",` +
        `"predecessor_account_id":"${context.predecessor}"` +
        '}'
      ),
      u128.Zero,
      ON_CREATE_CALL_GAS,
    );
  
  return promise;
}

export function on_create(account_id: string, attached_deposit: u128, predecessor_account_id: string): boolean {
  _is_private();

  // Get promise result
  const result = ContractPromise.getResults()[0];
  // Check if it succeeded.
  if (result.succeeded) {
    // add new entry to users
    users.add(account_id);
    return true
  } else {
    // refund attached deposit
      ContractPromiseBatch
        .create(predecessor_account_id)
        .transfer(attached_deposit);
      return false
  }
}

/**
 * panick if account_id is not an owner
 * 
 * @param account_id 
 */
 function _is_owner(account_id: string): void {
  assert(
    owners.has(account_id),
    `${account_id} must be an owner`
  );
}

/**
 * panick if account_id isn't direct sub-account of a dao factory
 * 
 * @param account_id 
 */
 function _is_dao(account_id: string): void {
   const parent_account: string = account_id.substring(account_id.indexOf('.') + 1);
  assert(
    dao_factories.has(parent_account),
    `${parent_account} must be whiteisted as dao factory`
  );
}

/**
 * panick if caller isn't this contract's address
 */
 function _is_private(): void {
  assert(
    context.contractName == context.predecessor,
    `Method is private`
  );
}
