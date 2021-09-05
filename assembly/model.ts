import { u128 } from 'near-sdk-as';

@nearBindgen
export class ContractCall { 
  public addr: string;
  public func: string; 
  public args: string; 
  public gas: u64;
  public depo: u128;
}
