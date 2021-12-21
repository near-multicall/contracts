import { u128 } from 'near-sdk-as';
@nearBindgen
export class ContractCall { 
  addr: string;
  func: string; 
  args: string; // base64 encoded JSON args
  gas: u64;
  depo: u128;
}

@nearBindgen
export class FtOnTransferArgs {
  function_id: string;
  args: string; // base64 encoded JSON args
}

@nearBindgen
export class MulticallArgs {
  schedules: ContractCall[][];
}

@nearBindgen
export class JobActivateArgs {
  job_id: i32;
}


@nearBindgen
export class SwapAction {
  // Pool which should be used for swapping.
  pool_id: u64;
  // Token to swap from.
  token_in: string;
  // Amount to exchange.
  // If amount_in is None, it will take amount_out from previous step.
  // Will fail if amount_in is None on the first step.
  amount_in: u128;
  // Token to swap into.
  token_out: string;
  // Required minimum amount of token_out.
  min_amount_out: u128;
}

@nearBindgen
export class Job {
  id: i32;
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
  schedules: ContractCall[][];
}
