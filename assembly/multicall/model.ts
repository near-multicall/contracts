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
