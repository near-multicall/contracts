import { context, ContractPromise, storage, u128, base64, util } from 'near-sdk-as';
import { CroncatRemoveTaskArgs, CroncatRefillTaskArgs, CroncatCreateTaskArgs } from './model';


@nearBindgen
export class StorageCostUtils {
  // Price per 1 byte of storage from mainnet genesis config.
  // TODO: will be using the host function when it will be available.
  static STORAGE_PRICE_PER_BYTE: u128 = u128.fromString("10000000000000000000");
  storage_byte_cost(): u128 { return StorageCostUtils.STORAGE_PRICE_PER_BYTE };
  get_min_storage_balance () : u128 {
    // calculate $NEAR amount reserved for storage
    return u128.mul(this.storage_byte_cost() , u128.fromU64(context.storageUsage));
  }
}

@nearBindgen
export class Croncat {

  KEY_CRONCAT_MANAGER_ADDRESS: string;

  static GAS_FOR_CREATE_TASK: u64 = 20_000_000_000_000;
  static GAS_FOR_REMOVE_TASK: u64 = 15_000_000_000_000;
  static GAS_FOR_REFILL_BALANCE: u64 = 15_000_000_000_000;

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
   * @param contract_id 
   * @param function_id 
   * @param cadence 
   * @param recurring 
   * @param deposit 
   * @param budget 
   * @param gas 
   * @param task_args 
   */
  create_task(
    contract_id: string,
    function_id: string,
    cadence: string,
    recurring: boolean,
    deposit: u128,
    budget: u128, 
    gas: u64,
    task_args: string
  ): void {
    ContractPromise.create<CroncatCreateTaskArgs>(
      this.get_manager_address(),
      "create_task",
      {
        contract_id: contract_id,
        function_id: function_id,
        cadence: cadence,
        recurring: recurring,
        deposit: deposit,
        gas: gas,
        arguments: task_args
      },
      Croncat.GAS_FOR_CREATE_TASK,
      budget
    );
  };

  /**
   * deletes a task, returning remaining balance to task owner.
   * 
   * @param task_hash 
   */
  remove_task(task_hash: string): void {
    ContractPromise.create<CroncatRemoveTaskArgs>(
      this.get_manager_address(),
      "remove_task",
      { task_hash: task_hash },
      Croncat.GAS_FOR_REMOVE_TASK,
      u128.Zero
    );
  };

  /**
   * refill a task with more balance to continue its execution
   * 
   * @param task_hash 
   * @param amount 
   */
  refill_balance(task_hash: string, amount: u128): void {
    ContractPromise.create<CroncatRefillTaskArgs>(
      this.get_manager_address(),
      "refill_balance",
      { task_hash: task_hash },
      Croncat.GAS_FOR_REFILL_BALANCE,
      amount
    );
  }
}
