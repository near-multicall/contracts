import { context, ContractPromise, storage, u128, base64, util } from 'near-sdk-as';
import { CroncatRemoveTaskArgs, CroncatRefillTaskArgs, CroncatCreateTaskArgs } from './model';


@nearBindgen
export class StorageCostUtils {
  // Price per 1 byte of storage from mainnet genesis config.
  // TODO: will be using the host function when it will be available.
  static STORAGE_PRICE_PER_BYTE: u128 = u128.fromString("10000000000000000000");
  static storage_byte_cost(): u128 { return StorageCostUtils.STORAGE_PRICE_PER_BYTE };
  static get_min_storage_balance () : u128 {
    // calculate $NEAR amount reserved for storage
    return u128.mul(
      StorageCostUtils.storage_byte_cost(),
      u128.fromU64(context.storageUsage)
    );
  }
}

@nearBindgen
export class Croncat {

  KEY_CRONCAT_MANAGER_ADDRESS: string;

  // constructor for initializing the Croncat manager address
  constructor(keyCroncatManagerAddress: string) {
    this.KEY_CRONCAT_MANAGER_ADDRESS = keyCroncatManagerAddress;
  }


  /**
   * get the croncat manager contract's address 
   */
  get_manager_address (): string {
    return storage.getSome<string>(this.KEY_CRONCAT_MANAGER_ADDRESS);
  }

  /**
   * set smart contract address of croncat manager
   * it will have privilege to trigger active jobs
   * 
   * @param address 
   */
  set_manager_address (address: string): void {
    storage.set<string>(this.KEY_CRONCAT_MANAGER_ADDRESS, address);
  }

  /**
   * Allows any user or contract to pay for future txns based on a specific schedule
   * contract, function id & other settings. When the task runs out of balance
   * the task is no longer executed, any additional funds will be returned to task owner
   * 
   * @param call_args 
   * @param call_gas 
   * @param call_deposit 
   * @returns 
   */
  create_task(
    call_args: CroncatCreateTaskArgs,
    call_gas: u64,
    call_deposit: u128
  ): ContractPromise {

    // manually encode args because gas must be encoded as JSON number.
    // near-sdk-rs has custom Gas type but assembly-script doesn't
    // so we work with u64. Problem: u64 is encoded as JSON string
    const encodedArgs: Uint8Array = util.stringToBytes(
      "{" +
      `"contract_id":"${call_args.contract_id}",` +
      `"function_id":"${call_args.function_id}",` +
      `"cadence":"${call_args.cadence}",` +
      `"recurring":${call_args.recurring},` +
      `"deposit":"${call_args.deposit}",` +
      `"gas":${call_args.gas},` +
      `"arguments":"${call_args.arguments}"` +
      "}"
    );
    
    return ContractPromise.create(
      this.get_manager_address(),
      "create_task",
      encodedArgs,
      call_gas,
      call_deposit
    );
  };

  /**
   * deletes a task, returning remaining balance to task owner.
   * 
   * @param call_args 
   * @param call_gas 
   * @param call_deposit 
   */
  remove_task(
    call_args: CroncatRemoveTaskArgs,
    call_gas: u64,
    call_deposit: u128
  ): ContractPromise {
    return ContractPromise.create<CroncatRemoveTaskArgs>(
      this.get_manager_address(),
      "remove_task",
      call_args,
      call_gas,
      call_deposit
    );
  };

  /**
   * refill a task with more balance to continue its execution
   * 
   * @param call_args 
   * @param call_gas 
   * @param call_deposit 
   */
  refill_balance(
    call_args: CroncatRefillTaskArgs,
    call_gas: u64,
    call_deposit: u128
  ): ContractPromise {
    return ContractPromise.create<CroncatRefillTaskArgs>(
      this.get_manager_address(),
      "refill_balance",
      call_args,
      call_gas,
      call_deposit
    );
  }
}
