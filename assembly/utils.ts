import { u128 } from 'near-sdk-as';

@nearBindgen
export class StorageCostUtils {
  // Price per 1 byte of storage from mainnet genesis config.
  // TODO: will be using the host function when it will be available.
  STORAGE_PRICE_PER_BYTE: u128 = u128.fromString("10000000000000000000");
  storage_byte_cost(): u128 { return this.STORAGE_PRICE_PER_BYTE };
}
