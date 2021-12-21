import { u128, context } from 'near-sdk-as';


@nearBindgen
export class StorageCostUtils {
  // Price per 1 byte of storage from mainnet genesis config.
  // TODO: will be using the host function when it will be available.
  STORAGE_PRICE_PER_BYTE: u128 = u128.fromString("10000000000000000000");
  storage_byte_cost(): u128 { return this.STORAGE_PRICE_PER_BYTE };
  get_min_storage_balance () : u128 {
    // calculate $NEAR amount reserved for storage
    return u128.mul(this.storage_byte_cost() , u128.fromU64(context.storageUsage));
  }
}
