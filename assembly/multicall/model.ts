import { u128 } from 'near-sdk-as';


@nearBindgen
export class FunctionCall {
  func: string; 
  args: string; // base64 encoded JSON args
  gas: u64;
  depo: u128;
}

@nearBindgen
export class BatchCall { 
  address: string;
  actions: FunctionCall[];
}

@nearBindgen
export class FtOnTransferArgs {
  function_id: string;
  args: string; // base64 encoded JSON args
}

@nearBindgen
export class MulticallArgs {
  calls: BatchCall[][];
}

@nearBindgen
export class JobActivateArgs {
  job_id: u32;
}

@nearBindgen
export class CroncatRemoveTaskArgs {
  task_hash: string;
}

@nearBindgen
export class CroncatRefillTaskArgs {
  task_hash: string;
}

@nearBindgen
export class CroncatCreateTaskArgs {
  contract_id: string;
  function_id: string;
  cadence: string;
  recurring: boolean;
  deposit: u128;
  gas: u64;
  arguments: string;
}

@nearBindgen
export class JobSchema {
  id: u32;
  croncat_hash: string;
  creator: string;
  bond: u128;
  cadence: string;
  trigger_gas: u64;
  trigger_deposit: u128;
  croncat_budget: u128;
  start_at: u64;
  runs_max: u64;
  runs_current: u64;
  is_active: boolean;
  calls: BatchCall[][];
}
