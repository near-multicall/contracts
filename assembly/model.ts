import { u128 } from 'near-sdk-as';

@nearBindgen
export class ContractCall { 
  addr: string;
  func: string; 
  args: string; 
  gas: u64;
  depo: u128;
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
