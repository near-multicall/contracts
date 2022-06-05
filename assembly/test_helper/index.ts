import { context, MapEntry, PersistentUnorderedMap } from "near-sdk-as";

const call_logs = new PersistentUnorderedMap<string, u64>('a');


export function log (msg: string): void {
    call_logs.set(msg, context.blockIndex);
}

export function get_logs (start: i32 = 0, end: i32 = call_logs.length): MapEntry<string, u64>[] {
    return call_logs.entries(start, end);
}

export function get_log_block (log_msg: string): u64 {
    return call_logs.getSome(log_msg);
}

export function do_fail (): void {
    assert(false, "task failed successfully");
}

/**
 * Current block timestamp, i.e. number of non-leap-nanoseconds since January 1, 1970 0:00:00 UTC.
 */
export function get_block_timestamp (): u64 {
    return context.blockTimestamp;
}

/**
 * Current block index.
 */
export function get_block_index (): u64 {
    return context.blockIndex;
}
