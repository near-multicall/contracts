import { u128 } from 'near-sdk-as';
import { ContractCall } from './model';
import { JSON } from 'assemblyscript-json';

@nearBindgen
export class StorageCostUtils {
  // Price per 1 byte of storage from mainnet genesis config.
  // TODO: will be using the host function when it will be available.
  STORAGE_PRICE_PER_BYTE: u128 = u128.fromString("10000000000000000000");
  storage_byte_cost(): u128 { return this.STORAGE_PRICE_PER_BYTE };
}

@nearBindgen
export class ContractCallUtils {
  fromJsonObj(jsonObj: JSON.Obj): ContractCall | null {
    let addrOrNull: JSON.Str | null = jsonObj.getString("addr");
    let funcOrNull: JSON.Str | null = jsonObj.getString("func");
    let argsOrNull: JSON.Str | null = jsonObj.getString("args");
    let gasOrNull: JSON.Str | null = jsonObj.getString("gas");
    let depoOrNull: JSON.Str | null = jsonObj.getString("depo");
    if (addrOrNull != null && funcOrNull != null && argsOrNull != null && gasOrNull != null && depoOrNull != null) {
      const cAddr: string = addrOrNull.valueOf();
      const cFunc: string = funcOrNull.valueOf();
      const cArgs: string = argsOrNull.valueOf();
      const cGas: u64 = <u64> parseInt(gasOrNull.valueOf());
      const cDepo: u128 = u128.fromString(depoOrNull.valueOf());
      const cCall: ContractCall = {addr: cAddr, func: cFunc, args: cArgs, gas: cGas, depo: cDepo}; 
      return cCall;
    }
    return null;
  };
}
