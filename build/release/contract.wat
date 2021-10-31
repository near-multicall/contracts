(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i64_=>_none (func (param i64)))
 (type $i64_i64_=>_none (func (param i64 i64)))
 (type $i64_i64_=>_i64 (func (param i64 i64) (result i64)))
 (type $none_=>_i64 (func (result i64)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i64_i64_i64_=>_i64 (func (param i64 i64 i64) (result i64)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i64_i64_=>_none (func (param i32 i32 i32 i64 i64)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i64_i64_i64_i64_i64_i64_i64_=>_none (func (param i64 i64 i64 i64 i64 i64 i64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i64_=>_i32 (func (param i32 i32 i32 i32 i64) (result i32)))
 (type $i32_i32_i32_i32_i64_i32_=>_i32 (func (param i32 i32 i32 i32 i64 i32) (result i32)))
 (type $i32_i32_i32_i64_i32_=>_i32 (func (param i32 i32 i32 i64 i32) (result i32)))
 (type $i32_i64_i64_=>_i32 (func (param i32 i64 i64) (result i32)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i64_i64_i64_i64_i64_=>_i64 (func (param i64 i64 i64 i64 i64) (result i64)))
 (type $i64_i64_i64_i64_i64_i64_i64_i64_=>_i64 (func (param i64 i64 i64 i64 i64 i64 i64 i64) (result i64)))
 (type $i64_i64_i64_i64_i64_i64_i64_i64_i64_=>_i64 (func (param i64 i64 i64 i64 i64 i64 i64 i64 i64) (result i64)))
 (type $f64_i32_=>_f64 (func (param f64 i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "input" (func $~lib/near-sdk-core/env/env/env.input (param i64)))
 (import "env" "register_len" (func $~lib/near-sdk-core/env/env/env.register_len (param i64) (result i64)))
 (import "env" "panic" (func $~lib/near-sdk-core/env/env/env.panic))
 (import "env" "read_register" (func $~lib/near-sdk-core/env/env/env.read_register (param i64 i64)))
 (import "env" "predecessor_account_id" (func $~lib/near-sdk-core/env/env/env.predecessor_account_id (param i64)))
 (import "env" "storage_has_key" (func $~lib/near-sdk-core/env/env/env.storage_has_key (param i64 i64) (result i64)))
 (import "env" "account_balance" (func $~lib/near-sdk-core/env/env/env.account_balance (param i64)))
 (import "env" "storage_usage" (func $~lib/near-sdk-core/env/env/env.storage_usage (result i64)))
 (import "env" "promise_batch_create" (func $~lib/near-sdk-core/env/env/env.promise_batch_create (param i64 i64) (result i64)))
 (import "env" "promise_batch_action_function_call" (func $~lib/near-sdk-core/env/env/env.promise_batch_action_function_call (param i64 i64 i64 i64 i64 i64 i64)))
 (import "env" "promise_create" (func $~lib/near-sdk-core/env/env/env.promise_create (param i64 i64 i64 i64 i64 i64 i64 i64) (result i64)))
 (import "env" "promise_then" (func $~lib/near-sdk-core/env/env/env.promise_then (param i64 i64 i64 i64 i64 i64 i64 i64 i64) (result i64)))
 (import "env" "value_return" (func $~lib/near-sdk-core/env/env/env.value_return (param i64 i64)))
 (import "env" "promise_batch_action_transfer" (func $~lib/near-sdk-core/env/env/env.promise_batch_action_transfer (param i64 i64)))
 (import "env" "storage_read" (func $~lib/near-sdk-core/env/env/env.storage_read (param i64 i64 i64) (result i64)))
 (import "env" "storage_write" (func $~lib/near-sdk-core/env/env/env.storage_write (param i64 i64 i64 i64 i64) (result i64)))
 (import "env" "storage_remove" (func $~lib/near-sdk-core/env/env/env.storage_remove (param i64 i64 i64) (result i64)))
 (import "env" "current_account_id" (func $~lib/near-sdk-core/env/env/env.current_account_id (param i64)))
 (import "env" "promise_results_count" (func $~lib/near-sdk-core/env/env/env.promise_results_count (result i64)))
 (import "env" "promise_result" (func $~lib/near-sdk-core/env/env/env.promise_result (param i64 i64) (result i64)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $assembly/index/admins (mut i32) (i32.const 0))
 (global $assembly/index/tokens (mut i32) (i32.const 0))
 (global $~lib/as-bignum/globals/__res128_hi (mut i64) (i64.const 0))
 (global $assembly/index/storageCosts (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.handler (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/JSON/_JSON.decoder (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/util/string/__fixmulShift (mut i64) (i64.const 0))
 (global $~lib/assemblyscript-json/JSON/NULL (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\04\00\00\00:\00:")
 (data (i32.const 1068) "\1c")
 (data (i32.const 1080) "\01")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1164) "<")
 (data (i32.const 1176) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 1228) "\1c")
 (data (i32.const 1240) "\01\00\00\00\08\00\00\00:\00m\00a\00p")
 (data (i32.const 1260) "\1c")
 (data (i32.const 1272) "\01\00\00\00\08\00\00\00:\00l\00e\00n")
 (data (i32.const 1292) ",")
 (data (i32.const 1304) "\01\00\00\00\10\00\00\00:\00e\00n\00t\00r\00i\00e\00s")
 (data (i32.const 1340) "\1c")
 (data (i32.const 1352) "\01\00\00\00\02\00\00\00a")
 (data (i32.const 1372) "\1c")
 (data (i32.const 1384) "\01\00\00\00\02\00\00\00b")
 (data (i32.const 1404) "<")
 (data (i32.const 1416) "\01\00\00\00(\00\00\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
 (data (i32.const 1468) ",")
 (data (i32.const 1480) "\01\00\00\00\1a\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00r\00a\00d\00i\00x")
 (data (i32.const 1516) "L")
 (data (i32.const 1528) "\01\00\00\00.\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00u\00t\00i\00l\00s\00.\00t\00s")
 (data (i32.const 1596) "\\")
 (data (i32.const 1612) "K\00\00\00\00\01\02\03\04\05\06\07\08\t$$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#$$$$$$\n\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\"#")
 (data (i32.const 1692) ",")
 (data (i32.const 1704) "\n\00\00\00\10\00\00\00P\06\00\00P\06\00\00K\00\00\00K")
 (data (i32.const 1740) ",")
 (data (i32.const 1752) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1788) "<")
 (data (i32.const 1800) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1852) ",")
 (data (i32.const 1864) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1900) "<")
 (data (i32.const 1912) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 1964) "\\")
 (data (i32.const 1976) "\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s")
 (data (i32.const 2060) "<")
 (data (i32.const 2072) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 2124) "<")
 (data (i32.const 2136) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 2188) "<")
 (data (i32.const 2200) "\01\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d")
 (data (i32.const 2252) "\1c")
 (data (i32.const 2264) "\01\00\00\00\02\00\00\00{")
 (data (i32.const 2284) "|")
 (data (i32.const 2296) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 2412) "<")
 (data (i32.const 2424) "\01\00\00\00\"\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00u\00p\00c\00a\00s\00t")
 (data (i32.const 2476) "\\")
 (data (i32.const 2488) "\01\00\00\00@\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00J\00S\00O\00N\00.\00t\00s")
 (data (i32.const 2572) "\1c")
 (data (i32.const 2584) "\01\00\00\00\02\00\00\00}")
 (data (i32.const 2604) "\1c")
 (data (i32.const 2616) "\01\00\00\00\02\00\00\00,")
 (data (i32.const 2636) ",")
 (data (i32.const 2648) "\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'")
 (data (i32.const 2684) "\1c")
 (data (i32.const 2696) "\01\00\00\00\02\00\00\00\"")
 (data (i32.const 2716) "L")
 (data (i32.const 2728) "\01\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 2796) "L")
 (data (i32.const 2808) "\01\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2876) ",")
 (data (i32.const 2888) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 2924) "\1c")
 (data (i32.const 2936) "\01\00\00\00\02\00\00\00\\")
 (data (i32.const 2956) "\1c")
 (data (i32.const 2968) "\01\00\00\00\02\00\00\00/")
 (data (i32.const 2988) "\1c")
 (data (i32.const 3000) "\01\00\00\00\02\00\00\00\08")
 (data (i32.const 3020) "\1c")
 (data (i32.const 3032) "\01\00\00\00\02\00\00\00n")
 (data (i32.const 3052) "\1c")
 (data (i32.const 3064) "\01\00\00\00\02\00\00\00\n")
 (data (i32.const 3084) "\1c")
 (data (i32.const 3096) "\01\00\00\00\02\00\00\00r")
 (data (i32.const 3116) "\1c")
 (data (i32.const 3128) "\01\00\00\00\02\00\00\00\0d")
 (data (i32.const 3148) "\1c")
 (data (i32.const 3160) "\01\00\00\00\02\00\00\00t")
 (data (i32.const 3180) "\1c")
 (data (i32.const 3192) "\01\00\00\00\02\00\00\00\t")
 (data (i32.const 3212) "\1c")
 (data (i32.const 3224) "\01\00\00\00\02\00\00\00u")
 (data (i32.const 3244) "<")
 (data (i32.const 3256) "\01\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t")
 (data (i32.const 3308) "L")
 (data (i32.const 3320) "\01\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 ")
 (data (i32.const 3388) "\1c")
 (data (i32.const 3400) "\01\00\00\00\02\00\00\00:")
 (data (i32.const 3420) ",")
 (data (i32.const 3432) "\01\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'")
 (data (i32.const 3468) "L")
 (data (i32.const 3480) "\01\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t")
 (data (i32.const 3548) ",")
 (data (i32.const 3560) "\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 3596) "\1c")
 (data (i32.const 3608) "\01\00\00\00\02\00\00\00[")
 (data (i32.const 3628) "\1c")
 (data (i32.const 3640) "\01\00\00\00\02\00\00\00]")
 (data (i32.const 3660) "L")
 (data (i32.const 3672) "\01\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y")
 (data (i32.const 3740) "\1c")
 (data (i32.const 3752) "\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 3772) ",")
 (data (i32.const 3784) "\01\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'")
 (data (i32.const 3820) "\1c")
 (data (i32.const 3832) "\01\00\00\00\02\00\00\00\'")
 (data (i32.const 3852) "\1c")
 (data (i32.const 3864) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 3884) "\1c")
 (data (i32.const 3896) "\01\00\00\00\04\00\00\00-\000")
 (data (i32.const 3926) "\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D")
 (data (i32.const 4108) "\1c")
 (data (i32.const 4120) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 4140) "<")
 (data (i32.const 4152) "\01\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N")
 (data (i32.const 4204) "L")
 (data (i32.const 4216) "\01\00\00\00<\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00b\00i\00n\00d\00g\00e\00n\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 4284) ",")
 (data (i32.const 4296) "\01\00\00\00\12\00\00\00s\00c\00h\00e\00d\00u\00l\00e\00s")
 (data (i32.const 4332) "<")
 (data (i32.const 4344) "\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 4396) ",")
 (data (i32.const 4408) "\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 4444) "\1c")
 (data (i32.const 4456) "\01\00\00\00\n\00\00\00t\00y\00p\00e\00 ")
 (data (i32.const 4476) "|")
 (data (i32.const 4488) "\01\00\00\00h\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00/\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00>\00>")
 (data (i32.const 4604) "<")
 (data (i32.const 4616) "\01\00\00\00 \00\00\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00n\00u\00l\00l\00.")
 (data (i32.const 4668) "\1c")
 (data (i32.const 4680) "\01\00\00\00\n\00\00\00K\00e\00y\00:\00 ")
 (data (i32.const 4700) ",")
 (data (i32.const 4712) "\01\00\00\00\16\00\00\00 \00w\00i\00t\00h\00 \00t\00y\00p\00e\00 ")
 (data (i32.const 4748) "<")
 (data (i32.const 4760) "\01\00\00\00\1e\00\00\00i\00s\00 \00n\00o\00t\00 \00n\00u\00l\00l\00a\00b\00l\00e")
 (data (i32.const 4812) "<")
 (data (i32.const 4824) "\01\00\00\00 \00\00\00V\00a\00l\00u\00e\00 \00w\00i\00t\00h\00 \00K\00e\00y\00:\00 ")
 (data (i32.const 4876) "L")
 (data (i32.const 4888) "\01\00\00\002\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00 \00o\00r\00 \00n\00u\00l\00l\00.")
 (data (i32.const 4956) "\\")
 (data (i32.const 4968) "\01\00\00\00D\00\00\00A\00r\00r\00a\00y\00<\00a\00s\00s\00e\00m\00b\00l\00y\00/\00m\00o\00d\00e\00l\00/\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00>")
 (data (i32.const 5052) ",")
 (data (i32.const 5064) "\01\00\00\00\18\00\00\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l")
 (data (i32.const 5100) "L")
 (data (i32.const 5112) "\01\00\00\004\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00o\00b\00j\00e\00c\00t\00 \00o\00r\00 \00n\00u\00l\00l\00 ")
 (data (i32.const 5180) "\1c")
 (data (i32.const 5192) "\01\00\00\00\08\00\00\00a\00d\00d\00r")
 (data (i32.const 5212) "\1c")
 (data (i32.const 5224) "\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
 (data (i32.const 5244) "L")
 (data (i32.const 5256) "\01\00\00\000\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00 \00o\00r\00 \00n\00u\00l\00l")
 (data (i32.const 5324) "\1c")
 (data (i32.const 5336) "\01\00\00\00\08\00\00\00f\00u\00n\00c")
 (data (i32.const 5356) "\1c")
 (data (i32.const 5368) "\01\00\00\00\08\00\00\00a\00r\00g\00s")
 (data (i32.const 5388) "\1c")
 (data (i32.const 5400) "\01\00\00\00\06\00\00\00g\00a\00s")
 (data (i32.const 5420) "\1c")
 (data (i32.const 5432) "\01\00\00\00\06\00\00\00u\006\004")
 (data (i32.const 5452) "\9c")
 (data (i32.const 5464) "\01\00\00\00~\00\00\00 \00i\00s\00 \00a\00n\00 \006\004\00-\00b\00i\00t\00 \00i\00n\00t\00e\00g\00e\00r\00 \00a\00n\00d\00 \00i\00s\00 \00e\00x\00p\00e\00c\00t\00e\00d\00 \00t\00o\00 \00b\00e\00 \00e\00n\00c\00o\00d\00e\00d\00 \00a\00s\00 \00a\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 5612) "\1c")
 (data (i32.const 5624) "\01\00\00\00\08\00\00\00d\00e\00p\00o")
 (data (i32.const 5644) "\1c")
 (data (i32.const 5656) "\01\00\00\00\08\00\00\00u\001\002\008")
 (data (i32.const 5676) "l")
 (data (i32.const 5688) "\01\00\00\00Z\00\00\00 \00e\00x\00p\00e\00c\00t\00e\00d\00 \00t\00y\00p\00e\00 \00s\00t\00r\00i\00n\00g\00 \00t\00o\00 \00d\00e\00c\00o\00d\00e\00 \00u\001\002\008\00 \00b\00u\00t\00 \00g\00o\00t\00 ")
 (data (i32.const 5788) "\1c")
 (data (i32.const 5800) "\01\00\00\00\0c\00\00\00s\00t\00r\00i\00n\00g")
 (data (i32.const 5820) ",")
 (data (i32.const 5832) "\01\00\00\00\0e\00\00\00B\00o\00o\00l\00e\00a\00n")
 (data (i32.const 5868) "\1c")
 (data (i32.const 5880) "\01\00\00\00\0c\00\00\00O\00b\00j\00e\00c\00t")
 (data (i32.const 5900) "\1c")
 (data (i32.const 5912) "\01\00\00\00\n\00\00\00A\00r\00r\00a\00y")
 (data (i32.const 5932) "\1c")
 (data (i32.const 5944) "\01\00\00\00\08\00\00\00N\00u\00l\00l")
 (data (i32.const 5964) ",")
 (data (i32.const 5976) "\01\00\00\00\0e\00\00\00I\00n\00t\00e\00g\00e\00r")
 (data (i32.const 6012) "\1c")
 (data (i32.const 6024) "\01\00\00\00\n\00\00\00F\00l\00o\00a\00t")
 (data (i32.const 6044) ",")
 (data (i32.const 6056) "\01\00\00\00\18\00\00\00U\00N\00K\00N\00O\00W\00N\00 \00T\00Y\00P\00E")
 (data (i32.const 6092) ",")
 (data (i32.const 6104) "\01\00\00\00\14\00\00\00P\00a\00r\00a\00m\00e\00t\00e\00r\00 ")
 (data (i32.const 6140) "L")
 (data (i32.const 6152) "\01\00\00\000\00\00\00 \00i\00s\00 \00r\00e\00q\00u\00i\00r\00e\00d\00 \00b\00u\00t\00 \00m\00i\00s\00s\00i\00n\00g")
 (data (i32.const 6220) "L")
 (data (i32.const 6232) "\01\00\00\004\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00c\00o\00r\00e\00/\00u\00t\00i\00l\00.\00t\00s")
 (data (i32.const 6300) "l")
 (data (i32.const 6312) "\01\00\00\00\\\00\00\00 \00n\00e\00e\00d\00s\00 \00t\00o\00 \00b\00e\00 \00w\00h\00i\00t\00e\00l\00i\00s\00t\00e\00d\00 \00t\00o\00 \00c\00a\00l\00l\00 \00t\00h\00i\00s\00 \00f\00u\00n\00c\00t\00i\00o\00n")
 (data (i32.const 6412) "<")
 (data (i32.const 6424) "\01\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 6476) "L")
 (data (i32.const 6488) "\01\00\00\002\00\00\00s\00c\00h\00e\00d\00u\00l\00e\00s\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y")
 (data (i32.const 6556) ",")
 (data (i32.const 6568) "\01\00\00\00\14\00\00\00s\00c\00h\00e\00d\00u\00l\00e\00s\00[")
 (data (i32.const 6604) "<")
 (data (i32.const 6616) "\01\00\00\00\"\00\00\00]\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y")
 (data (i32.const 6668) "\1c")
 (data (i32.const 6680) "!\00\00\00\0c\00\00\00\b0\19\00\00\00\00\00\00\e0\19")
 (data (i32.const 6700) "|")
 (data (i32.const 6712) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 6828) "<")
 (data (i32.const 6840) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 6892) "\1c")
 (data (i32.const 6904) "\01\00\00\00\02\00\00\000")
 (data (i32.const 6924) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 7324) "\1c\04")
 (data (i32.const 7336) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 8380) "\\")
 (data (i32.const 8392) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 8476) "L")
 (data (i32.const 8488) "\01\00\00\000\00\00\00O\00v\00e\00r\00f\00l\00o\00w\00 \00d\00u\00r\00i\00n\00g\00 \00a\00d\00d\00i\00s\00i\00o\00n")
 (data (i32.const 8556) "\\")
 (data (i32.const 8568) "\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00s\00a\00f\00e\00/\00u\001\002\008\00.\00t\00s")
 (data (i32.const 8652) "L")
 (data (i32.const 8664) "\01\00\00\00<\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00b\00i\00g\00n\00u\00m\00/\00i\00n\00t\00e\00g\00e\00r\00/\00u\001\002\008\00.\00t\00s")
 (data (i32.const 8732) "L")
 (data (i32.const 8744) "\01\00\00\00<\00\00\00O\00v\00e\00r\00f\00l\00o\00w\00 \00d\00u\00r\00i\00n\00g\00 \00m\00u\00l\00t\00i\00p\00l\00i\00c\00a\00t\00i\00o\00n")
 (data (i32.const 8812) "L")
 (data (i32.const 8824) "\01\00\00\00:\00\00\00U\00n\00d\00e\00r\00f\00l\00o\00w\00 \00d\00u\00r\00i\00n\00g\00 \00s\00u\00b\00s\00t\00r\00a\00c\00t\00i\00o\00n")
 (data (i32.const 8892) "<")
 (data (i32.const 8904) "\01\00\00\00$\00\00\00i\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00f\00u\00n\00d\00s")
 (data (i32.const 8956) "\1c")
 (data (i32.const 8968) "\01\00\00\00\04\00\00\00\\\00\"")
 (data (i32.const 8988) "\1c")
 (data (i32.const 9000) "\01\00\00\00\04\00\00\00\\\00\\")
 (data (i32.const 9020) ",")
 (data (i32.const 9032) "\01\00\00\00\12\00\00\00s\00e\00n\00d\00e\00r\00_\00i\00d")
 (data (i32.const 9068) "\1c")
 (data (i32.const 9080) "\01\00\00\00\0c\00\00\00a\00m\00o\00u\00n\00t")
 (data (i32.const 9100) "\1c")
 (data (i32.const 9112) "\01\00\00\00\06\00\00\00m\00s\00g")
 (data (i32.const 9132) ",")
 (data (i32.const 9144) "\01\00\00\00\10\00\00\00f\00u\00n\00c\00t\00i\00o\00n")
 (data (i32.const 9180) ",")
 (data (i32.const 9192) "\01\00\00\00\12\00\00\00m\00u\00l\00t\00i\00c\00a\00l\00l")
 (data (i32.const 9228) "\\")
 (data (i32.const 9240) "\01\00\00\00B\00\00\00e\00r\00r\00o\00r\00 \00p\00a\00r\00s\00i\00n\00g\00 \00m\00u\00l\00t\00i\00c\00a\00l\00l\00 \00a\00r\00g\00u\00m\00e\00n\00t\00s")
 (data (i32.const 9324) "\1c")
 (data (i32.const 9356) "\1c")
 (data (i32.const 9388) "L")
 (data (i32.const 9400) "\01\00\00\00<\00\00\00c\00o\00u\00l\00d\00 \00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00c\00a\00l\00l\00 ")
 (data (i32.const 9468) ",")
 (data (i32.const 9480) "\01\00\00\00\1a\00\00\00 \00o\00f\00 \00s\00c\00h\00e\00d\00u\00l\00e\00 ")
 (data (i32.const 9516) ",")
 (data (i32.const 9528) "!\00\00\00\14\00\00\00\c0$\00\00\00\00\00\00\10%\00\00\00\00\00\00@\04")
 (data (i32.const 9564) "\\")
 (data (i32.const 9576) "\01\00\00\00F\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00e\00n\00c\00o\00d\00e\00r\00.\00t\00s")
 (data (i32.const 9660) "\1c")
 (data (i32.const 9672) "\01\00\00\00\04\00\00\00\\\00b")
 (data (i32.const 9692) "\1c")
 (data (i32.const 9704) "\01\00\00\00\04\00\00\00\\\00n")
 (data (i32.const 9724) "\1c")
 (data (i32.const 9736) "\01\00\00\00\04\00\00\00\\\00r")
 (data (i32.const 9756) "\1c")
 (data (i32.const 9768) "\01\00\00\00\04\00\00\00\\\00t")
 (data (i32.const 9788) "\\")
 (data (i32.const 9800) "\01\00\00\00H\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00 \00c\00o\00d\00e\00:\00 ")
 (data (i32.const 9884) "l")
 (data (i32.const 9896) "\01\00\00\00N\00\00\00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \001\000\00 \00o\00r\00 \001\006")
 (data (i32.const 9996) "<")
 (data (i32.const 10008) "\01\00\00\00 \00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f")
 (data (i32.const 10060) ",")
 (data (i32.const 10072) "\01\00\00\00\14\00\00\00a\00c\00c\00o\00u\00n\00t\00_\00i\00d")
 (data (i32.const 10108) ",")
 (data (i32.const 10120) "\01\00\00\00\16\00\00\00a\00c\00c\00o\00u\00n\00t\00_\00i\00d\00s")
 (data (i32.const 10156) "L")
 (data (i32.const 10168) "\01\00\00\002\00\00\00A\00r\00r\00a\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00>")
 (data (i32.const 10236) "\1c")
 (data (i32.const 10248) "\01\00\00\00\n\00\00\00K\00e\00y\00 \00\'")
 (data (i32.const 10268) "\\")
 (data (i32.const 10280) "\01\00\00\00>\00\00\00\'\00 \00i\00s\00 \00n\00o\00t\00 \00p\00r\00e\00s\00e\00n\00t\00 \00i\00n\00 \00t\00h\00e\00 \00s\00t\00o\00r\00a\00g\00e")
 (data (i32.const 10364) "L")
 (data (i32.const 10376) "\01\00\00\00:\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00c\00o\00r\00e\00/\00s\00t\00o\00r\00a\00g\00e\00.\00t\00s")
 (data (i32.const 10444) "|")
 (data (i32.const 10456) "\01\00\00\00d\00\00\00~\00l\00i\00b\00/\00n\00e\00a\00r\00-\00s\00d\00k\00-\00c\00o\00r\00e\00/\00c\00o\00l\00l\00e\00c\00t\00i\00o\00n\00s\00/\00p\00e\00r\00s\00i\00s\00t\00e\00n\00t\00V\00e\00c\00t\00o\00r\00.\00t\00s")
 (data (i32.const 10572) "\1c")
 (data (i32.const 10584) "\01\00\00\00\06\00\00\00k\00e\00y")
 (data (i32.const 10604) "\1c")
 (data (i32.const 10616) "\01\00\00\00\n\00\00\00v\00a\00l\00u\00e")
 (data (i32.const 10636) "<")
 (data (i32.const 10648) "\01\00\00\00\1e\00\00\00V\00e\00c\00t\00o\00r\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 10700) "\\")
 (data (i32.const 10712) "\01\00\00\00B\00\00\00M\00a\00p\00E\00n\00t\00r\00y\00<\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00/\00S\00t\00r\00i\00n\00g\00,\00b\00o\00o\00l\00>")
 (data (i32.const 10796) "\1c")
 (data (i32.const 10808) "\01\00\00\00\08\00\00\00b\00o\00o\00l")
 (data (i32.const 10828) "<")
 (data (i32.const 10840) "\01\00\00\00 \00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 10892) "<")
 (data (i32.const 10904) "\01\00\00\00&\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00b\00o\00u\00n\00d\00s")
 (data (i32.const 10956) "\1c")
 (data (i32.const 10968) "\01\00\00\00\n\00\00\00s\00t\00a\00r\00t")
 (data (i32.const 10988) "\1c")
 (data (i32.const 11000) "\01\00\00\00\06\00\00\00i\003\002")
 (data (i32.const 11020) "<")
 (data (i32.const 11032) "\01\00\00\00$\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00I\00n\00t\00e\00g\00e\00r")
 (data (i32.const 11084) "\1c")
 (data (i32.const 11096) "\01\00\00\00\06\00\00\00e\00n\00d")
 (data (i32.const 11116) ",")
 (data (i32.const 11128) "\01\00\00\00\12\00\00\00a\00d\00d\00r\00e\00s\00s\00e\00s")
 (data (i32.const 11164) "\1c")
 (data (i32.const 11176) "\01\00\00\00\08\00\00\00i\00n\00i\00t")
 (data (i32.const 11196) "<")
 (data (i32.const 11208) "\01\00\00\00&\00\00\00A\00l\00r\00e\00a\00d\00y\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d")
 (data (i32.const 11260) "\1c")
 (data (i32.const 11272) "\01\00\00\00\08\00\00\00d\00o\00n\00e")
 (data (i32.const 11292) ",")
 (data (i32.const 11304) "\01\00\00\00\16\00\00\00r\00e\00f\00_\00a\00d\00d\00r\00e\00s\00s")
 (data (i32.const 11340) "\1c")
 (data (i32.const 11352) "\01\00\00\00\0c\00\00\00t\00o\00k\00e\00n\00s")
 (data (i32.const 11372) ",")
 (data (i32.const 11384) "\01\00\00\00\16\00\00\00r\00e\00c\00e\00i\00v\00e\00r\00_\00i\00d")
 (data (i32.const 11420) ",")
 (data (i32.const 11432) "\01\00\00\00\1c\00\00\00w\00i\00t\00h\00d\00r\00a\00w\00a\00l\00_\00g\00a\00s")
 (data (i32.const 11468) "<")
 (data (i32.const 11480) "\01\00\00\00$\00\00\00t\00o\00k\00e\00n\00_\00t\00r\00a\00n\00s\00f\00e\00r\00_\00g\00a\00s")
 (data (i32.const 11532) ",")
 (data (i32.const 11544) "\01\00\00\00\10\00\00\00w\00i\00t\00h\00d\00r\00a\00w")
 (data (i32.const 11580) ",")
 (data (i32.const 11592) "\01\00\00\00\1a\00\00\00{\00\"\00t\00o\00k\00e\00n\00_\00i\00d\00\"\00:\00\"")
 (data (i32.const 11628) ",")
 (data (i32.const 11640) "\01\00\00\00\18\00\00\00\"\00,\00\"\00a\00m\00o\00u\00n\00t\00\"\00:\00\"")
 (data (i32.const 11676) "\1c")
 (data (i32.const 11688) "\01\00\00\00\04\00\00\00\"\00}")
 (data (i32.const 11708) ",")
 (data (i32.const 11720) "!\00\00\00\14\00\00\00P-\00\00\00\00\00\00\80-\00\00\00\00\00\00\b0-")
 (data (i32.const 11756) "\1c")
 (data (i32.const 11768) "\01\00\00\00\02\00\00\001")
 (data (i32.const 11788) ",")
 (data (i32.const 11800) "\01\00\00\00\16\00\00\00f\00t\00_\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 11836) "<")
 (data (i32.const 11848) "\01\00\00\00\"\00\00\00{\00\"\00r\00e\00c\00e\00i\00v\00e\00r\00_\00i\00d\00\"\00:\00 \00\"")
 (data (i32.const 11900) ",")
 (data (i32.const 11912) "\01\00\00\00\1c\00\00\00\"\00,\00 \00\"\00a\00m\00o\00u\00n\00t\00\"\00:\00 \00\"")
 (data (i32.const 11948) ",")
 (data (i32.const 11960) "!\00\00\00\14\00\00\00P.\00\00\00\00\00\00\90.\00\00\00\00\00\00\b0-")
 (data (i32.const 12000) "*\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 12068) " \00\00\00\t\00\00\00 \00\00\00\00\00\00\00B\00\00\00\00\00\00\00 ")
 (data (i32.const 12104) "\0d\00\00\00 \00\00\00\00\00\00\00\10A\82\00\00\00\00\00A\00\00\00\02\00\00\00\00\00\00\00\11\00\00\00 \00\00\00\00\00\00\00\02A")
 (data (i32.const 12176) "\0d\00\00\00\02A")
 (data (i32.const 12192) "\0d\00\00\00 \00\00\00\0d\00\00\00 \00\00\00\1a\00\00\00 \00\00\00\0d\00\00\00 \00\00\00\0d\00\00\00 \00\00\00\0d")
 (data (i32.const 12244) "\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\10A\82\00\00\00\00\00\04A\00\00\00\00\00\00\02\t\00\00\00\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 12304) "&")
 (data (i32.const 12316) "A\08\00\00\02")
 (data (i32.const 12332) "\02A")
 (export "multicall" (func $assembly/index/__wrapper_multicall))
 (export "ft_on_transfer" (func $assembly/index/__wrapper_ft_on_transfer))
 (export "recover_near" (func $assembly/index/__wrapper_recover_near))
 (export "get_min_storage_balance" (func $assembly/index/__wrapper_get_min_storage_balance))
 (export "admins_add" (func $assembly/index/__wrapper_admins_add))
 (export "admins_remove" (func $assembly/index/__wrapper_admins_remove))
 (export "get_admins" (func $assembly/index/__wrapper_get_admins))
 (export "tokens_add" (func $assembly/index/__wrapper_tokens_add))
 (export "tokens_remove" (func $assembly/index/__wrapper_tokens_remove))
 (export "get_tokens" (func $assembly/index/__wrapper_get_tokens))
 (export "init" (func $assembly/index/__wrapper_init))
 (export "withdraw_from_ref" (func $assembly/index/__wrapper_withdraw_from_ref))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1120
   i32.const 1184
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.tee $3
  i32.const 4
  i32.add
  local.tee $4
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $5
  i32.add
  local.tee $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $1
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $1
   local.get $2
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
  local.get $3
  local.get $5
  i32.store
  local.get $4
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1120
   i32.const 1184
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/stub/__alloc
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $4
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $4
    local.get $3
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $4
      local.get $1
      i32.const 1
      i32.add
      local.tee $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 2
      i32.add
      local.set $0
      local.get $3
      i32.const 2
      i32.add
      local.set $1
      local.get $4
      local.get $3
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $4
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=5
        local.tee $4
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=4
        local.get $0
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $1
        i32.load offset=9
        local.tee $4
        i32.const 8
        i32.shl
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $4
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $3
     i32.const 2
     i32.add
     local.set $1
     local.get $4
     local.get $3
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $4
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=6
       local.tee $4
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=4
       local.get $0
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $1
       i32.load offset=10
       local.tee $4
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $4
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $4
    local.get $3
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $4
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=7
      local.tee $4
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=4
      local.get $0
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $1
      i32.load offset=11
      local.tee $4
      i32.const 24
      i32.shl
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $4
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $4
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $4
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $4
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $4
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $4
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $4
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $0
   i32.sub
   local.get $4
   i32.sub
   i32.const 0
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $0
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $4
  i32.add
  local.tee $2
  i32.eqz
  if
   i32.const 1088
   return
  end
  local.get $2
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/memory/memory.copy
  local.get $2
  local.get $3
  i32.add
  local.get $1
  local.get $4
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 8
  i32.const 3
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 1248
  call $~lib/string/String#concat
  local.set $3
  i32.const 4
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $3
  i32.const 1056
  call $~lib/string/String#concat
  i32.store
  local.get $2
  local.get $1
  i32.store
  local.get $0
  i32.const 1312
  call $~lib/string/String#concat
  local.set $1
  i32.const 12
  i32.const 6
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 1280
  call $~lib/string/String#concat
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 1056
  call $~lib/string/String#concat
  i32.store
  local.get $0
  i32.const -1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
 )
 (func $~lib/as-bignum/integer/u128/u128#constructor (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 9
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $~lib/as-bignum/utils/atou128 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
  block $folding-inner0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $8
   i32.eqz
   br_if $folding-inner0
   block $__inlined_func$~lib/string/String#charCodeAt (result i32)
    i32.const -1
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.eqz
    br_if $__inlined_func$~lib/string/String#charCodeAt
    drop
    local.get $0
    i32.load16_u
   end
   local.tee $2
   i32.const 48
   i32.eq
   i32.const 0
   local.get $8
   i32.const 1
   i32.eq
   select
   br_if $folding-inner0
   block $__inlined_func$~lib/string/String#charCodeAt1 (result i32)
    i32.const -1
    local.get $2
    i32.const 45
    i32.eq
    local.tee $12
    local.get $2
    i32.const 43
    i32.eq
    i32.or
    local.tee $3
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.ge_u
    br_if $__inlined_func$~lib/string/String#charCodeAt1
    drop
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
   end
   i32.const 48
   i32.eq
   if (result i32)
    i32.const 1
    block $__inlined_func$~lib/string/String#charCodeAt3 (result i32)
     i32.const -1
     local.get $3
     i32.const 1
     i32.add
     local.tee $3
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.ge_u
     br_if $__inlined_func$~lib/string/String#charCodeAt3
     drop
     local.get $0
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
    end
    local.tee $2
    i32.const 88
    i32.eq
    local.get $2
    i32.const 120
    i32.eq
    select
    if (result i32)
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     i32.const 16
    else
     i32.const 1
     local.get $2
     i32.const 79
     i32.eq
     local.get $2
     i32.const 111
     i32.eq
     select
     if (result i32)
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      i32.const 8
     else
      i32.const 1
      local.get $2
      i32.const 66
      i32.eq
      local.get $2
      i32.const 98
      i32.eq
      select
      if (result i32)
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       i32.const 2
      else
       i32.const 10
      end
     end
    end
   else
    i32.const 10
   end
   local.set $2
   i32.const 0
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.set $1
   block $break|0
    block $case3|0
     block $case2|0
      block $case1|0
       local.get $2
       i32.const 2
       i32.ne
       if
        local.get $2
        i32.const 10
        i32.eq
        br_if $case1|0
        local.get $2
        i32.const 16
        i32.eq
        br_if $case2|0
        br $case3|0
       end
       local.get $0
       i32.const 20
       i32.sub
       local.set $7
       loop $do-continue|1
        block $__inlined_func$~lib/string/String#charCodeAt5 (result i32)
         i32.const -1
         local.get $3
         local.get $7
         i32.load offset=16
         i32.const 1
         i32.shr_u
         i32.ge_u
         br_if $__inlined_func$~lib/string/String#charCodeAt5
         drop
         local.get $0
         local.get $3
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u
        end
        i32.const 48
        i32.sub
        local.tee $5
        i32.const 2
        i32.lt_u
        if
         i32.const 0
         local.get $1
         i64.load
         local.tee $4
         i64.const 1
         i64.shl
         local.get $1
         i64.load offset=8
         i64.const 1
         i64.shl
         local.get $4
         i64.const 63
         i64.shr_u
         i64.or
         call $~lib/as-bignum/integer/u128/u128#constructor
         local.set $2
         i32.const 0
         local.get $5
         i64.extend_i32_u
         i64.const 0
         call $~lib/as-bignum/integer/u128/u128#constructor
         local.set $1
         i32.const 0
         local.get $2
         i64.load
         local.get $1
         i64.load
         i64.or
         local.get $2
         i64.load offset=8
         local.get $1
         i64.load offset=8
         i64.or
         call $~lib/as-bignum/integer/u128/u128#constructor
         local.set $1
         local.get $3
         i32.const 1
         i32.add
         local.tee $3
         local.get $8
         i32.lt_s
         br_if $do-continue|1
        end
       end
       br $break|0
      end
      local.get $0
      i32.const 20
      i32.sub
      local.set $7
      loop $do-continue|2
       block $__inlined_func$~lib/string/String#charCodeAt7 (result i32)
        i32.const -1
        local.get $3
        local.get $7
        i32.load offset=16
        i32.const 1
        i32.shr_u
        i32.ge_u
        br_if $__inlined_func$~lib/string/String#charCodeAt7
        drop
        local.get $0
        local.get $3
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
       end
       i32.const 48
       i32.sub
       local.tee $5
       i32.const 10
       i32.lt_u
       if
        i32.const 0
        local.get $1
        i64.load
        local.tee $4
        i64.const 3
        i64.shl
        local.get $1
        i64.load offset=8
        i64.const 3
        i64.shl
        local.get $4
        i64.const 61
        i64.shr_u
        i64.or
        call $~lib/as-bignum/integer/u128/u128#constructor
        local.set $2
        i32.const 0
        local.get $1
        i64.load
        local.tee $4
        i64.const 1
        i64.shl
        local.get $1
        i64.load offset=8
        i64.const 1
        i64.shl
        local.get $4
        i64.const 63
        i64.shr_u
        i64.or
        call $~lib/as-bignum/integer/u128/u128#constructor
        local.set $1
        i32.const 0
        local.get $2
        i64.load
        local.tee $4
        local.get $1
        i64.load
        i64.add
        local.tee $6
        local.get $4
        local.get $6
        i64.gt_u
        i64.extend_i32_u
        local.get $2
        i64.load offset=8
        local.get $1
        i64.load offset=8
        i64.add
        i64.add
        call $~lib/as-bignum/integer/u128/u128#constructor
        local.set $2
        i32.const 0
        local.get $5
        i64.extend_i32_u
        i64.const 0
        call $~lib/as-bignum/integer/u128/u128#constructor
        local.set $1
        i32.const 0
        local.get $2
        i64.load
        local.tee $4
        local.get $1
        i64.load
        i64.add
        local.tee $6
        local.get $4
        local.get $6
        i64.gt_u
        i64.extend_i32_u
        local.get $2
        i64.load offset=8
        local.get $1
        i64.load offset=8
        i64.add
        i64.add
        call $~lib/as-bignum/integer/u128/u128#constructor
        local.set $1
        local.get $3
        i32.const 1
        i32.add
        local.tee $3
        local.get $8
        i32.lt_s
        br_if $do-continue|2
       end
      end
      br $break|0
     end
     local.get $0
     i32.const 20
     i32.sub
     local.set $7
     loop $do-continue|3
      block $do-break|3
       block $__inlined_func$~lib/string/String#charCodeAt9 (result i32)
        i32.const -1
        local.get $3
        local.get $7
        i32.load offset=16
        i32.const 1
        i32.shr_u
        i32.ge_u
        br_if $__inlined_func$~lib/string/String#charCodeAt9
        drop
        local.get $0
        local.get $3
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
       end
       i32.const 48
       i32.sub
       local.tee $2
       i32.const 74
       i32.gt_u
       br_if $do-break|3
       local.get $2
       i32.const 1716
       i32.load
       i32.add
       i32.load8_u
       local.tee $5
       i32.const 16
       i32.ge_u
       br_if $do-break|3
       i32.const 0
       local.get $1
       i64.load
       local.tee $4
       i64.const 4
       i64.shl
       local.get $1
       i64.load offset=8
       i64.const 4
       i64.shl
       local.get $4
       i64.const 60
       i64.shr_u
       i64.or
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.set $2
       i32.const 0
       local.get $5
       i64.extend_i32_u
       i64.const 0
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.set $1
       i32.const 0
       local.get $2
       i64.load
       local.get $1
       i64.load
       i64.or
       local.get $2
       i64.load offset=8
       local.get $1
       i64.load offset=8
       i64.or
       call $~lib/as-bignum/integer/u128/u128#constructor
       local.set $1
       local.get $3
       i32.const 1
       i32.add
       local.tee $3
       local.get $8
       i32.lt_s
       br_if $do-continue|3
      end
     end
     br $break|0
    end
    i32.const 0
    local.get $2
    i64.extend_i32_s
    i64.const 0
    call $~lib/as-bignum/integer/u128/u128#constructor
    local.set $7
    local.get $0
    i32.const 20
    i32.sub
    local.set $13
    loop $do-continue|4
     block $do-break|4
      block $__inlined_func$~lib/string/String#charCodeAt11 (result i32)
       i32.const -1
       local.get $3
       local.get $13
       i32.load offset=16
       i32.const 1
       i32.shr_u
       i32.ge_u
       br_if $__inlined_func$~lib/string/String#charCodeAt11
       drop
       local.get $0
       local.get $3
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
      end
      i32.const 48
      i32.sub
      local.tee $5
      i32.const 74
      i32.gt_u
      br_if $do-break|4
      local.get $2
      local.get $5
      i32.const 1716
      i32.load
      i32.add
      i32.load8_u
      local.tee $5
      i32.le_u
      br_if $do-break|4
      local.get $7
      i64.load
      local.tee $4
      i64.const 4294967295
      i64.and
      local.tee $9
      local.get $1
      i64.load
      local.tee $6
      i64.const 4294967295
      i64.and
      local.tee $10
      i64.mul
      local.set $11
      local.get $10
      local.get $4
      i64.const 32
      i64.shr_u
      local.tee $10
      i64.mul
      local.get $9
      local.get $6
      i64.const 32
      i64.shr_u
      local.tee $14
      i64.mul
      local.get $11
      i64.const 32
      i64.shr_u
      i64.add
      local.tee $15
      i64.const 4294967295
      i64.and
      i64.add
      local.set $9
      local.get $10
      local.get $14
      i64.mul
      local.get $15
      i64.const 32
      i64.shr_u
      i64.add
      local.get $4
      local.get $1
      i64.load offset=8
      i64.mul
      i64.add
      local.get $6
      local.get $7
      i64.load offset=8
      i64.mul
      i64.add
      local.get $9
      i64.const 32
      i64.shr_u
      i64.add
      global.set $~lib/as-bignum/globals/__res128_hi
      i32.const 0
      local.get $11
      i64.const 4294967295
      i64.and
      local.get $9
      i64.const 32
      i64.shl
      i64.or
      global.get $~lib/as-bignum/globals/__res128_hi
      call $~lib/as-bignum/integer/u128/u128#constructor
      local.set $1
      i32.const 0
      local.get $5
      i64.extend_i32_u
      i64.const 0
      call $~lib/as-bignum/integer/u128/u128#constructor
      local.set $5
      i32.const 0
      local.get $1
      i64.load
      local.tee $4
      local.get $5
      i64.load
      i64.add
      local.tee $6
      local.get $4
      local.get $6
      i64.gt_u
      i64.extend_i32_u
      local.get $1
      i64.load offset=8
      local.get $5
      i64.load offset=8
      i64.add
      i64.add
      call $~lib/as-bignum/integer/u128/u128#constructor
      local.set $1
      local.get $3
      i32.const 1
      i32.add
      local.tee $3
      local.get $8
      i32.lt_s
      br_if $do-continue|4
     end
    end
   end
   local.get $12
   if (result i32)
    i32.const 0
    local.get $1
    i64.load
    i64.const -1
    i64.xor
    local.tee $4
    i64.const 1
    i64.add
    local.tee $6
    local.get $4
    local.get $6
    i64.gt_u
    i64.extend_i32_u
    local.get $1
    i64.load offset=8
    i64.const -1
    i64.xor
    i64.add
    call $~lib/as-bignum/integer/u128/u128#constructor
   else
    local.get $1
   end
   return
  end
  i32.const 0
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#constructor
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   local.tee $1
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1760
   i32.const 1808
   i32.const 18
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 18
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.eqz
  if
   i32.const 1920
   i32.const 1984
   i32.const 127
   i32.const 26
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2080
   i32.const 2144
   i32.const 159
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar (param $0 i32) (result i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=4
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=8
  i32.load offset=8
  i32.ge_s
  if
   i32.const -1
   return
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=8
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=4
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=8
  i32.load offset=8
  i32.ge_s
  if
   i32.const 2208
   i32.const 1984
   i32.const 156
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=8
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=4
  local.tee $0
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  call $~lib/typedarray/Uint8Array#__get
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace (param $0 i32)
  (local $1 i32)
  loop $while-continue|0
   i32.const 1
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   local.tee $1
   i32.const 32
   i32.eq
   i32.const 1
   local.get $1
   i32.const 13
   i32.eq
   i32.const 1
   local.get $1
   i32.const 10
   i32.eq
   local.get $1
   i32.const 9
   i32.eq
   select
   select
   select
   if
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    drop
    br $while-continue|0
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1760
   i32.const 1808
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1120
   i32.const 1184
   i32.const 99
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.set $3
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  local.get $0
  i32.const 4
  i32.sub
  local.tee $6
  i32.load
  local.tee $5
  i32.add
  i32.eq
  local.set $4
  local.get $3
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $2
  local.get $3
  local.get $5
  i32.gt_u
  if
   local.get $4
   if
    local.get $3
    i32.const 1073741820
    i32.gt_u
    if
     i32.const 1120
     i32.const 1184
     i32.const 52
     i32.const 33
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.add
    local.tee $3
    memory.size
    local.tee $5
    i32.const 16
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee $4
    i32.gt_u
    if
     local.get $5
     local.get $3
     local.get $4
     i32.sub
     i32.const 65535
     i32.add
     i32.const -65536
     i32.and
     i32.const 16
     i32.shr_u
     local.tee $4
     local.get $4
     local.get $5
     i32.lt_s
     select
     memory.grow
     i32.const 0
     i32.lt_s
     if
      local.get $4
      memory.grow
      i32.const 0
      i32.lt_s
      if
       unreachable
      end
     end
    end
    local.get $3
    global.set $~lib/rt/stub/offset
    local.get $6
    local.get $2
    i32.store
   else
    local.get $2
    local.get $5
    i32.const 1
    i32.shl
    local.tee $3
    local.get $2
    local.get $3
    i32.gt_u
    select
    call $~lib/rt/stub/__alloc
    local.tee $2
    local.get $0
    local.get $5
    call $~lib/memory/memory.copy
    local.get $2
    local.set $0
   end
  else
   local.get $4
   if
    local.get $0
    local.get $2
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $6
    local.get $2
    i32.store
   end
  end
  local.get $0
  i32.const 4
  i32.sub
  local.get $1
  i32.store offset=16
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1760
    i32.const 1872
    i32.const 17
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   i32.const 2
   i32.shl
   local.set $1
   local.get $3
   local.get $0
   i32.load
   local.tee $4
   local.get $2
   if
    local.get $3
    i32.const 1
    i32.shl
    local.tee $2
    i32.const 1073741820
    local.get $2
    i32.const 1073741820
    i32.lt_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   local.get $1
   call $~lib/rt/stub/__renew
   local.tee $2
   i32.add
   local.get $1
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2080
   i32.const 1872
   i32.const 99
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 2304
   i32.const 1872
   i32.const 103
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  if (result i32)
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $2
      local.get $1
      i32.load
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $4
      local.get $1
      i32.load offset=4
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $6
      local.get $1
      i32.load offset=8
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $5
      local.get $1
      i32.load offset=12
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $3
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $2
     local.get $1
     i32.load
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $2
     local.get $1
     i32.load8_u
     i32.const 374761393
     i32.mul
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   local.get $2
   local.get $2
   i32.const 15
   i32.shr_u
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $0
   local.get $0
   i32.const 13
   i32.shr_u
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $0
   local.get $0
   i32.const 16
   i32.shr_u
   i32.xor
  else
   i32.const 0
  end
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $1
  local.get $3
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $1
   i32.const 7
   i32.and
   local.get $2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   loop $do-continue|0
    local.get $1
    i64.load
    local.get $2
    i64.load
    i64.eq
    if
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $3
     i32.const 4
     i32.sub
     local.tee $3
     i32.const 4
     i32.ge_u
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $2
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $2
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   if
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load
     local.get $1
     call $~lib/string/String.__eq
    end
    if
     local.get $0
     return
    end
    local.get $2
    i32.const -2
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  local.tee $7
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  local.tee $4
  if
   local.get $4
   local.get $2
   i32.store offset=4
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    local.tee $10
    i32.const 1
    i32.add
    local.tee $4
    i32.const 2
    i32.shl
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $8
    local.get $4
    i32.const 3
    i32.shl
    i32.const 3
    i32.div_s
    local.tee $6
    i32.const 12
    i32.mul
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $4
    local.get $0
    i32.load offset=8
    local.tee $11
    local.get $0
    i32.load offset=16
    i32.const 12
    i32.mul
    i32.add
    local.set $5
    local.get $4
    local.set $3
    loop $while-continue|0
     local.get $5
     local.get $11
     i32.ne
     if
      local.get $11
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $3
       local.get $11
       i32.load
       local.tee $9
       i32.store
       local.get $3
       local.get $11
       i32.load offset=4
       i32.store offset=4
       local.get $3
       local.get $8
       local.get $9
       call $~lib/util/hash/HASH<~lib/string/String>
       local.get $10
       i32.and
       i32.const 2
       i32.shl
       i32.add
       local.tee $9
       i32.load
       i32.store offset=8
       local.get $9
       local.get $3
       i32.store
       local.get $3
       i32.const 12
       i32.add
       local.set $3
      end
      local.get $11
      i32.const 12
      i32.add
      local.set $11
      br $while-continue|0
     end
    end
    local.get $0
    local.get $8
    i32.store
    local.get $0
    local.get $10
    i32.store offset=4
    local.get $0
    local.get $4
    i32.store offset=8
    local.get $0
    local.get $6
    i32.store offset=12
    local.get $0
    local.get $0
    i32.load offset=20
    i32.store offset=16
   end
   local.get $0
   i32.load offset=8
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $4
   i32.const 12
   i32.mul
   i32.add
   local.tee $4
   local.get $1
   i32.store
   local.get $4
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $4
   local.get $0
   i32.load
   local.get $7
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $4
   i32.store
  end
 )
 (func $~lib/assemblyscript-json/JSON/Handler#addValue (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  if (result i32)
   i32.const 0
  else
   local.get $0
   i32.load
   i32.load offset=12
   i32.eqz
  end
  if
   local.get $0
   i32.load
   local.get $2
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
  local.tee $4
  local.set $3
  local.get $4
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $3
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $3
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|0
      i32.const 1
      local.get $3
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $3
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $3
      br_if $do-continue|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    i32.load
    local.get $0
    i32.load
    i32.load offset=12
    i32.const 1
    i32.sub
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    local.tee $0
    local.set $4
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $3
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|01
      i32.const 1
      local.get $3
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $3
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $3
      br_if $do-continue|01
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 2496
    i32.const 78
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   i32.load
   local.get $1
   local.get $2
   call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set
  else
   local.get $0
   i32.load
   local.get $0
   i32.load
   i32.load offset=12
   i32.const 1
   i32.sub
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
   local.tee $1
   local.set $4
   local.get $1
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof2 (result i32)
     local.get $4
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 12000
     i32.load
     i32.le_u
     if
      loop $do-continue|03
       i32.const 1
       local.get $1
       i32.const 21
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof2
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 12004
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-continue|03
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   if
    block $__inlined_func$~lib/rt/__instanceof4 (result i32)
     local.get $0
     i32.load
     local.get $0
     i32.load
     i32.load offset=12
     i32.const 1
     i32.sub
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.tee $0
     local.set $4
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 12000
     i32.load
     i32.le_u
     if
      loop $do-continue|05
       i32.const 1
       local.get $1
       i32.const 21
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof4
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 12004
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-continue|05
      end
     end
     i32.const 0
    end
    i32.eqz
    if
     i32.const 2432
     i32.const 2496
     i32.const 80
     i32.const 13
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    i32.load
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   end
  end
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 22
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.get $0
  local.get $1
  i32.add
  local.tee $4
  i32.gt_u
  if
   i32.const 0
   i32.const 2896
   i32.const 749
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $6
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u
     local.set $3
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $3
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $4
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u
      i32.const 63
      i32.and
      local.set $5
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $3
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $1
       local.get $5
       local.get $3
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.store16
      else
       local.get $0
       local.get $4
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       local.set $7
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $3
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $7
        local.get $3
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $5
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $3
       else
        local.get $0
        local.get $4
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        local.get $3
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $5
        i32.const 12
        i32.shl
        i32.or
        local.get $7
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $3
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $3
       i32.const 65536
       i32.lt_u
       if
        local.get $1
        local.get $3
        i32.store16
       else
        local.get $1
        local.get $3
        i32.const 65536
        i32.sub
        local.tee $3
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $3
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 2
        i32.add
        local.set $1
       end
      end
     else
      local.get $2
      local.get $3
      i32.eqz
      i32.and
      br_if $while-break|0
      local.get $1
      local.get $3
      i32.store16
     end
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $6
  local.get $1
  local.get $6
  i32.sub
  call $~lib/rt/stub/__renew
 )
 (func $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.set $2
  end
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  i32.add
  i32.add
  local.get $2
  i32.const 1
  i32.sub
  local.get $1
  i32.sub
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $6
  i32.const 0
  i32.lt_s
  if
   i32.const 1088
   return
  end
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   local.tee $0
   if (result i32)
    local.get $0
   else
    i32.const 1088
   end
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.gt_s
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $5
    if
     local.get $3
     local.get $5
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.add
     local.set $3
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
  local.get $6
  i32.const 1084
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.set $1
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   local.get $6
   i32.lt_s
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $5
    if
     local.get $1
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.get $5
     local.get $5
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $2
     local.get $5
     i32.add
     local.set $2
    end
    local.get $3
    if
     local.get $1
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.const 1088
     local.get $3
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $2
     local.get $3
     i32.add
     local.set $2
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  if
   local.get $1
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $1
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.tee $1
  i32.const 48
  i32.sub
  local.tee $0
  i32.const 9
  i32.gt_s
  if
   i32.const 1
   local.get $1
   i32.const 55
   i32.sub
   local.tee $0
   i32.const 15
   i32.gt_s
   local.get $0
   i32.const 10
   i32.lt_s
   select
   if
    local.get $1
    i32.const 87
    i32.sub
    local.set $0
   end
  end
  local.get $0
  i32.const 16
  i32.lt_s
  i32.const 0
  local.get $0
  i32.const 0
  i32.ge_s
  select
  i32.eqz
  if
   i32.const 3264
   i32.const 1984
   i32.const 319
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/string/String.fromCharCode@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $1
  end
  i32.const 2
  local.get $1
  i32.const 0
  i32.gt_s
  local.tee $3
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  i32.store16
  local.get $3
  if
   local.get $2
   local.get $1
   i32.store16 offset=2
  end
  local.get $2
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.tee $1
  block $__inlined_func$~lib/string/String#charCodeAt (result i32)
   i32.const -1
   i32.const 2700
   i32.load
   i32.const 1
   i32.shr_u
   i32.eqz
   br_if $__inlined_func$~lib/string/String#charCodeAt
   drop
   i32.const 2704
   i32.load16_u
  end
  i32.eq
  if
   i32.const 2704
   return
  end
  block $__inlined_func$~lib/string/String#charCodeAt0 (result i32)
   i32.const -1
   i32.const 2940
   i32.load
   i32.const 1
   i32.shr_u
   i32.eqz
   br_if $__inlined_func$~lib/string/String#charCodeAt0
   drop
   i32.const 2944
   i32.load16_u
  end
  local.get $1
  i32.eq
  if
   i32.const 2944
   return
  end
  block $__inlined_func$~lib/string/String#charCodeAt2 (result i32)
   i32.const -1
   i32.const 2972
   i32.load
   i32.const 1
   i32.shr_u
   i32.eqz
   br_if $__inlined_func$~lib/string/String#charCodeAt2
   drop
   i32.const 2976
   i32.load16_u
  end
  local.get $1
  i32.eq
  if
   i32.const 2976
   return
  end
  block $__inlined_func$~lib/string/String#charCodeAt4 (result i32)
   i32.const -1
   i32.const 1388
   i32.load
   i32.const 1
   i32.shr_u
   i32.eqz
   br_if $__inlined_func$~lib/string/String#charCodeAt4
   drop
   i32.const 1392
   i32.load16_u
  end
  local.get $1
  i32.eq
  if
   i32.const 3008
   return
  end
  block $__inlined_func$~lib/string/String#charCodeAt6 (result i32)
   i32.const -1
   i32.const 3036
   i32.load
   i32.const 1
   i32.shr_u
   i32.eqz
   br_if $__inlined_func$~lib/string/String#charCodeAt6
   drop
   i32.const 3040
   i32.load16_u
  end
  local.get $1
  i32.eq
  if
   i32.const 3072
   return
  end
  block $__inlined_func$~lib/string/String#charCodeAt8 (result i32)
   i32.const -1
   i32.const 3100
   i32.load
   i32.const 1
   i32.shr_u
   i32.eqz
   br_if $__inlined_func$~lib/string/String#charCodeAt8
   drop
   i32.const 3104
   i32.load16_u
  end
  local.get $1
  i32.eq
  if
   i32.const 3136
   return
  end
  block $__inlined_func$~lib/string/String#charCodeAt10 (result i32)
   i32.const -1
   i32.const 3164
   i32.load
   i32.const 1
   i32.shr_u
   i32.eqz
   br_if $__inlined_func$~lib/string/String#charCodeAt10
   drop
   i32.const 3168
   i32.load16_u
  end
  local.get $1
  i32.eq
  if
   i32.const 3200
   return
  end
  block $__inlined_func$~lib/string/String#charCodeAt12 (result i32)
   i32.const -1
   i32.const 3228
   i32.load
   i32.const 1
   i32.shr_u
   i32.eqz
   br_if $__inlined_func$~lib/string/String#charCodeAt12
   drop
   i32.const 3232
   i32.load16_u
  end
  local.get $1
  i32.eq
  if
   i32.const 2
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.const 12
   i32.shl
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.const 8
   i32.shl
   i32.add
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.const 4
   i32.shl
   i32.add
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readHexDigit
   i32.add
   local.tee $0
   i32.const 65535
   i32.gt_u
   local.tee $2
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__new
   local.set $1
   local.get $2
   if
    local.get $0
    i32.const 1114111
    i32.gt_u
    if
     i32.const 0
     i32.const 2896
     i32.const 39
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.get $0
    i32.const 65536
    i32.sub
    local.tee $0
    i32.const 10
    i32.shr_u
    i32.const 55296
    i32.or
    local.get $0
    i32.const 1023
    i32.and
    i32.const 56320
    i32.or
    i32.const 16
    i32.shl
    i32.or
    i32.store
   else
    local.get $1
    local.get $0
    i32.store16
   end
   local.get $1
   return
  end
  i32.const 1
  global.set $~argumentsLength
  i32.const 3328
  local.get $1
  call $~lib/string/String.fromCharCode@varargs
  call $~lib/string/String#concat
  i32.const 1984
  i32.const 306
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
  local.set $1
  block $__inlined_func$~lib/string/String#charCodeAt (result i32)
   i32.const -1
   i32.const 2700
   i32.load
   i32.const 1
   i32.shr_u
   i32.eqz
   br_if $__inlined_func$~lib/string/String#charCodeAt
   drop
   i32.const 2704
   i32.load16_u
  end
  local.get $1
  i32.ne
  if
   i32.const 2736
   i32.const 1984
   i32.const 245
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
  i32.load offset=4
  local.set $1
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $for-loop|0 (result i32)
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   local.tee $3
   i32.const 32
   i32.lt_s
   if
    i32.const 2816
    i32.const 1984
    i32.const 254
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/string/String#charCodeAt0 (result i32)
    i32.const -1
    i32.const 2700
    i32.load
    i32.const 1
    i32.shr_u
    i32.eqz
    br_if $__inlined_func$~lib/string/String#charCodeAt0
    drop
    i32.const 2704
    i32.load16_u
   end
   local.get $3
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
    i32.const 1
    global.set $~argumentsLength
    local.get $1
    call $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs
    local.set $0
    local.get $2
    i32.load offset=12
    i32.eqz
    if
     local.get $0
     return
    end
    local.get $2
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    local.get $2
    i32.load offset=4
    local.get $2
    i32.load offset=12
    call $~lib/util/string/joinStringArray
   else
    block $__inlined_func$~lib/string/String#charCodeAt2 (result i32)
     i32.const -1
     i32.const 2940
     i32.load
     i32.const 1
     i32.shr_u
     i32.eqz
     br_if $__inlined_func$~lib/string/String#charCodeAt2
     drop
     i32.const 2944
     i32.load16_u
    end
    local.get $3
    i32.eq
    if
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     i32.load offset=4
     local.get $1
     i32.const 1
     i32.add
     i32.gt_s
     if
      local.get $0
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
      local.set $3
      i32.const 1
      global.set $~argumentsLength
      local.get $2
      local.get $3
      local.get $1
      call $~lib/assemblyscript-json/decoder/DecoderState#readString@varargs
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     end
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readEscapedChar
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     local.get $0
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     i32.load offset=4
     local.set $1
    end
    br $for-loop|0
   end
  end
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 3568
   i32.const 1872
   i32.const 276
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 20
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.lt_s
   if
    block $__inlined_func$~lib/string/String#charCodeAt (result i32)
     i32.const -1
     local.get $2
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.ge_u
     br_if $__inlined_func$~lib/string/String#charCodeAt
     drop
     local.get $1
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
    end
    local.get $0
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    i32.ne
    if
     i32.const 3792
     local.get $1
     call $~lib/string/String#concat
     i32.const 3840
     call $~lib/string/String#concat
     i32.const 1984
     i32.const 396
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/assemblyscript-json/JSON/Handler#setBoolean (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  i32.const 1
  i32.const 24
  call $~lib/rt/stub/__new
  local.tee $3
  local.get $2
  i32.store8
  local.get $0
  local.get $1
  local.get $3
  if (result i32)
   local.get $3
  else
   i32.const 0
   i32.const 13
   call $~lib/rt/stub/__new
  end
  call $~lib/assemblyscript-json/JSON/Handler#addValue
 )
 (func $~lib/math/ipow32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 5
  local.set $1
  i32.const 1
  local.set $2
  local.get $0
  i32.const 0
  i32.le_s
  if
   local.get $0
   i32.eqz
   return
  else
   local.get $0
   i32.const 1
   i32.eq
   if
    i32.const 5
    return
   else
    local.get $0
    i32.const 2
    i32.eq
    if
     i32.const 25
     return
    else
     local.get $0
     i32.const 32
     i32.lt_s
     if
      block $break|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            i32.const 31
            local.get $0
            i32.clz
            i32.sub
            br_table $case4|0 $case3|0 $case2|0 $case1|0 $case0|0 $break|0
           end
           i32.const 5
           i32.const 1
           local.get $0
           i32.const 1
           i32.and
           select
           local.set $2
           local.get $0
           i32.const 1
           i32.shr_u
           local.set $0
           i32.const 25
           local.set $1
          end
          local.get $1
          local.get $2
          i32.mul
          local.get $2
          local.get $0
          i32.const 1
          i32.and
          select
          local.set $2
          local.get $0
          i32.const 1
          i32.shr_u
          local.set $0
          local.get $1
          local.get $1
          i32.mul
          local.set $1
         end
         local.get $1
         local.get $2
         i32.mul
         local.get $2
         local.get $0
         i32.const 1
         i32.and
         select
         local.set $2
         local.get $0
         i32.const 1
         i32.shr_u
         local.set $0
         local.get $1
         local.get $1
         i32.mul
         local.set $1
        end
        local.get $1
        local.get $2
        i32.mul
        local.get $2
        local.get $0
        i32.const 1
        i32.and
        select
        local.set $2
        local.get $0
        i32.const 1
        i32.shr_u
        local.set $0
        local.get $1
        local.get $1
        i32.mul
        local.set $1
       end
       local.get $1
       local.get $2
       i32.mul
       local.get $2
       local.get $0
       i32.const 1
       i32.and
       select
       local.set $2
      end
      local.get $2
      return
     end
    end
   end
  end
  loop $while-continue|1
   local.get $0
   if
    local.get $1
    local.get $2
    i32.mul
    local.get $2
    local.get $0
    i32.const 1
    i32.and
    select
    local.set $2
    local.get $0
    i32.const 1
    i32.shr_u
    local.set $0
    local.get $1
    local.get $1
    i32.mul
    local.set $1
    br $while-continue|1
   end
  end
  local.get $2
 )
 (func $~lib/math/NativeMath.scalbn (param $0 f64) (param $1 i32) (result f64)
  local.get $1
  i32.const 1023
  i32.gt_s
  if (result f64)
   local.get $0
   f64.const 8988465674311579538646525e283
   f64.mul
   local.set $0
   local.get $1
   i32.const 1023
   i32.sub
   local.tee $1
   i32.const 1023
   i32.gt_s
   if (result f64)
    local.get $1
    i32.const 1023
    i32.sub
    local.tee $1
    i32.const 1023
    local.get $1
    i32.const 1023
    i32.lt_s
    select
    local.set $1
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
   else
    local.get $0
   end
  else
   local.get $1
   i32.const -1022
   i32.lt_s
   if (result f64)
    local.get $0
    f64.const 2.004168360008973e-292
    f64.mul
    local.set $0
    local.get $1
    i32.const 969
    i32.add
    local.tee $1
    i32.const -1022
    i32.lt_s
    if (result f64)
     local.get $1
     i32.const 969
     i32.add
     local.tee $1
     i32.const -1022
     local.get $1
     i32.const -1022
     i32.gt_s
     select
     local.set $1
     local.get $0
     f64.const 2.004168360008973e-292
     f64.mul
    else
     local.get $0
    end
   else
    local.get $0
   end
  end
  local.get $1
  i64.extend_i32_s
  i64.const 1023
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret_i64
  f64.mul
 )
 (func $~lib/util/string/strtod (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 i64)
  block $folding-inner0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $7
   i32.eqz
   br_if $folding-inner0
   local.get $0
   i32.load16_u
   local.set $5
   f64.const 1
   local.set $13
   loop $while-continue|0
    local.get $7
    if (result i32)
     block $__inlined_func$~lib/util/string/isSpace (result i32)
      local.get $5
      i32.const 128
      i32.or
      i32.const 160
      i32.eq
      local.get $5
      i32.const 9
      i32.sub
      i32.const 4
      i32.le_u
      i32.or
      local.get $5
      i32.const 5760
      i32.lt_u
      br_if $__inlined_func$~lib/util/string/isSpace
      drop
      i32.const 1
      local.get $5
      i32.const -8192
      i32.add
      i32.const 10
      i32.le_u
      br_if $__inlined_func$~lib/util/string/isSpace
      drop
      block $break|0
       block $case6|0
        local.get $5
        i32.const 5760
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8232
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8233
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8239
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 8287
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 12288
        i32.eq
        br_if $case6|0
        local.get $5
        i32.const 65279
        i32.eq
        br_if $case6|0
        br $break|0
       end
       i32.const 1
       br $__inlined_func$~lib/util/string/isSpace
      end
      i32.const 0
     end
    else
     i32.const 0
    end
    if
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.set $5
     local.get $7
     i32.const 1
     i32.sub
     local.set $7
     br $while-continue|0
    end
   end
   local.get $7
   i32.eqz
   br_if $folding-inner0
   local.get $5
   i32.const 45
   i32.eq
   if (result i32)
    local.get $7
    i32.const 1
    i32.sub
    local.tee $7
    i32.eqz
    br_if $folding-inner0
    f64.const -1
    local.set $13
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.load16_u
   else
    local.get $5
    i32.const 43
    i32.eq
    if (result i32)
     local.get $7
     i32.const 1
     i32.sub
     local.tee $7
     i32.eqz
     br_if $folding-inner0
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
    else
     local.get $5
    end
   end
   local.tee $5
   i32.const 73
   i32.eq
   i32.const 0
   local.get $7
   i32.const 8
   i32.ge_s
   select
   if
    local.get $0
    i64.load
    i64.const 29555310648492105
    i64.eq
    if (result i32)
     local.get $0
     i64.load offset=8
     i64.const 34058970405077102
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $13
     f64.const inf
     f64.mul
     return
    end
    br $folding-inner0
   end
   local.get $5
   i32.const 48
   i32.sub
   i32.const 10
   i32.ge_u
   i32.const 0
   local.get $5
   i32.const 46
   i32.ne
   select
   br_if $folding-inner0
   local.get $0
   local.set $2
   loop $while-continue|1
    local.get $5
    i32.const 48
    i32.eq
    if
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.set $5
     local.get $7
     i32.const 1
     i32.sub
     local.set $7
     br $while-continue|1
    end
   end
   local.get $7
   i32.const 0
   i32.le_s
   if
    f64.const 0
    return
   end
   local.get $5
   i32.const 46
   i32.eq
   if
    local.get $0
    local.get $2
    i32.eq
    local.set $2
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    i32.const 0
    local.get $2
    local.get $7
    i32.const 1
    i32.sub
    local.tee $7
    select
    br_if $folding-inner0
    i32.const 1
    local.set $11
    loop $for-loop|2
     local.get $0
     i32.load16_u
     local.tee $5
     i32.const 48
     i32.eq
     if
      local.get $7
      i32.const 1
      i32.sub
      local.set $7
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      local.get $0
      i32.const 2
      i32.add
      local.set $0
      br $for-loop|2
     end
    end
    local.get $7
    i32.const 0
    i32.le_s
    if
     f64.const 0
     return
    end
    local.get $5
    i32.const 48
    i32.sub
    i32.const 10
    i32.ge_u
    i32.const 0
    i32.const 0
    local.get $2
    local.get $3
    select
    select
    br_if $folding-inner0
   end
   local.get $5
   i32.const 48
   i32.sub
   local.set $2
   loop $for-loop|3
    i32.const 1
    local.get $11
    i32.eqz
    i32.const 0
    local.get $5
    i32.const 46
    i32.eq
    select
    local.get $2
    i32.const 10
    i32.lt_u
    select
    if
     block $for-break3
      local.get $2
      i32.const 10
      i32.lt_u
      if
       local.get $1
       i32.const 19
       i32.lt_s
       if (result i64)
        local.get $2
        i64.extend_i32_u
        local.get $6
        i64.const 10
        i64.mul
        i64.add
       else
        local.get $6
        local.get $2
        i32.eqz
        i32.eqz
        i64.extend_i32_u
        i64.or
       end
       local.set $6
       local.get $1
       i32.const 1
       i32.add
       local.set $1
      else
       local.get $1
       local.set $3
       i32.const 1
       local.set $11
      end
      local.get $7
      i32.const 1
      i32.sub
      local.tee $7
      i32.eqz
      br_if $for-break3
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
      local.tee $5
      i32.const 48
      i32.sub
      local.set $2
      br $for-loop|3
     end
    end
   end
   block $~lib/util/string/scientific|inlined.0 (result f64)
    local.get $3
    local.get $1
    local.get $11
    select
    i32.const 19
    local.get $1
    local.get $1
    i32.const 19
    i32.gt_s
    select
    i32.sub
    local.set $11
    f64.const 0
    i32.const 1
    block $~lib/util/string/parseExp|inlined.0 (result i32)
     i32.const 1
     local.set $1
     i32.const 0
     local.get $0
     i32.load16_u
     i32.const 32
     i32.or
     i32.const 101
     i32.ne
     br_if $~lib/util/string/parseExp|inlined.0
     drop
     i32.const 0
     local.get $7
     i32.const 1
     i32.sub
     local.tee $2
     i32.eqz
     br_if $~lib/util/string/parseExp|inlined.0
     drop
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
     local.tee $3
     i32.const 45
     i32.eq
     if (result i32)
      i32.const 0
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      i32.eqz
      br_if $~lib/util/string/parseExp|inlined.0
      drop
      i32.const -1
      local.set $1
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
     else
      local.get $3
      i32.const 43
      i32.eq
      if (result i32)
       i32.const 0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.eqz
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
      else
       local.get $3
      end
     end
     local.set $3
     loop $while-continue|4
      local.get $3
      i32.const 48
      i32.eq
      if
       i32.const 0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.eqz
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
       local.set $3
       br $while-continue|4
      end
     end
     local.get $3
     i32.const 48
     i32.sub
     local.set $3
     loop $for-loop|5
      local.get $3
      i32.const 10
      i32.lt_u
      i32.const 0
      local.get $2
      select
      if
       local.get $1
       i32.const 3200
       i32.mul
       local.get $4
       i32.const 3200
       i32.ge_s
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       local.get $3
       local.get $4
       i32.const 10
       i32.mul
       i32.add
       local.set $4
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
       i32.const 48
       i32.sub
       local.set $3
       br $for-loop|5
      end
     end
     local.get $1
     local.get $4
     i32.mul
    end
    local.get $11
    i32.add
    local.tee $0
    i32.const -342
    i32.lt_s
    local.get $6
    i64.eqz
    select
    br_if $~lib/util/string/scientific|inlined.0
    drop
    f64.const inf
    local.get $0
    i32.const 308
    i32.gt_s
    br_if $~lib/util/string/scientific|inlined.0
    drop
    local.get $6
    f64.convert_i64_u
    local.tee $12
    local.get $0
    i32.eqz
    br_if $~lib/util/string/scientific|inlined.0
    drop
    local.get $0
    i32.const 37
    i32.le_s
    i32.const 0
    local.get $0
    i32.const 22
    i32.gt_s
    select
    if
     local.get $12
     local.get $0
     i32.const 3
     i32.shl
     i32.const 3744
     i32.add
     f64.load
     f64.mul
     local.set $12
     i32.const 22
     local.set $0
    end
    local.get $6
    i64.const 9007199254740991
    i64.le_u
    if (result i32)
     local.get $0
     i32.const 31
     i32.shr_s
     local.tee $5
     local.get $0
     local.get $5
     i32.add
     i32.xor
     i32.const 22
     i32.le_s
    else
     i32.const 0
    end
    if (result f64)
     local.get $0
     i32.const 0
     i32.gt_s
     if
      local.get $12
      local.get $0
      i32.const 3
      i32.shl
      i32.const 3920
      i32.add
      f64.load
      f64.mul
      br $~lib/util/string/scientific|inlined.0
     end
     local.get $12
     i32.const 0
     local.get $0
     i32.sub
     i32.const 3
     i32.shl
     i32.const 3920
     i32.add
     f64.load
     f64.div
    else
     local.get $0
     i32.const 0
     i32.lt_s
     if (result f64)
      local.get $6
      local.get $6
      i64.clz
      local.tee $8
      i64.shl
      local.set $6
      local.get $0
      local.tee $1
      i64.extend_i32_s
      local.get $8
      i64.sub
      local.set $8
      loop $for-loop|6
       local.get $1
       i32.const -14
       i32.le_s
       if
        local.get $6
        i64.const 6103515625
        i64.rem_u
        local.get $6
        i64.const 6103515625
        i64.div_u
        local.tee $6
        i64.clz
        local.tee $9
        i64.const 18
        i64.sub
        i64.shl
        f64.convert_i64_u
        f64.const 0.00004294967296
        f64.mul
        f64.nearest
        i64.trunc_f64_u
        local.get $6
        local.get $9
        i64.shl
        i64.add
        local.set $6
        local.get $8
        local.get $9
        i64.sub
        local.set $8
        local.get $1
        i32.const 14
        i32.add
        local.set $1
        br $for-loop|6
       end
      end
      local.get $6
      i32.const 0
      local.get $1
      i32.sub
      call $~lib/math/ipow32
      i64.extend_i32_s
      local.tee $10
      i64.div_u
      local.tee $14
      i64.clz
      local.set $9
      local.get $6
      local.get $10
      i64.rem_u
      f64.convert_i64_u
      i64.reinterpret_f64
      local.get $9
      i64.const 52
      i64.shl
      i64.add
      f64.reinterpret_i64
      local.get $10
      f64.convert_i64_u
      f64.div
      i64.trunc_f64_u
      local.get $14
      local.get $9
      i64.shl
      i64.add
      f64.convert_i64_u
      local.get $8
      local.get $9
      i64.sub
      i32.wrap_i64
      call $~lib/math/NativeMath.scalbn
     else
      local.get $6
      local.get $6
      i64.ctz
      local.tee $8
      i64.shr_u
      local.set $6
      local.get $8
      local.get $0
      local.tee $4
      i64.extend_i32_s
      i64.add
      global.set $~lib/util/string/__fixmulShift
      loop $for-loop|7
       local.get $4
       i32.const 13
       i32.ge_s
       if
        i64.const 32
        local.get $6
        i64.const 32
        i64.shr_u
        i64.const 1220703125
        i64.mul
        local.get $6
        i64.const 4294967295
        i64.and
        i64.const 1220703125
        i64.mul
        local.tee $6
        i64.const 32
        i64.shr_u
        i64.add
        local.tee $9
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.clz
        i64.extend_i32_u
        local.tee $8
        i64.sub
        local.tee $10
        global.get $~lib/util/string/__fixmulShift
        i64.add
        global.set $~lib/util/string/__fixmulShift
        local.get $6
        local.get $8
        i64.shl
        i64.const 31
        i64.shr_u
        i64.const 1
        i64.and
        local.get $9
        local.get $8
        i64.shl
        local.get $6
        i64.const 4294967295
        i64.and
        local.get $10
        i64.shr_u
        i64.or
        i64.add
        local.set $6
        local.get $4
        i32.const 13
        i32.sub
        local.set $4
        br $for-loop|7
       end
      end
      local.get $4
      call $~lib/math/ipow32
      i64.extend_i32_u
      local.tee $9
      local.get $6
      i64.const 4294967295
      i64.and
      i64.mul
      local.set $8
      i64.const 32
      local.get $9
      local.get $6
      i64.const 32
      i64.shr_u
      i64.mul
      local.get $8
      i64.const 32
      i64.shr_u
      i64.add
      local.tee $9
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.clz
      i64.extend_i32_u
      local.tee $6
      i64.sub
      local.tee $10
      global.get $~lib/util/string/__fixmulShift
      i64.add
      global.set $~lib/util/string/__fixmulShift
      local.get $8
      local.get $6
      i64.shl
      i64.const 31
      i64.shr_u
      i64.const 1
      i64.and
      local.get $9
      local.get $6
      i64.shl
      local.get $8
      i64.const 4294967295
      i64.and
      local.get $10
      i64.shr_u
      i64.or
      i64.add
      f64.convert_i64_u
      global.get $~lib/util/string/__fixmulShift
      i32.wrap_i64
      call $~lib/math/NativeMath.scalbn
     end
    end
   end
   local.get $13
   f64.copysign
   return
  end
  f64.const nan:0x8000000000000
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i64)
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject (result i32)
   local.get $0
   local.tee $3
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
   local.set $4
   i32.const 0
   block $__inlined_func$~lib/string/String#charCodeAt (result i32)
    i32.const -1
    i32.const 2268
    i32.load
    i32.const 1
    i32.shr_u
    i32.eqz
    br_if $__inlined_func$~lib/string/String#charCodeAt
    drop
    i32.const 2272
    i32.load16_u
   end
   local.get $4
   i32.ne
   br_if $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseObject
   drop
   local.get $3
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
   i32.load
   local.set $0
   local.get $3
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
   i32.const 1088
   i32.store
   local.get $3
   i32.load
   local.set $4
   i32.const 4
   i32.const 12
   call $~lib/rt/stub/__new
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.eqz
   if
    i32.const 0
    i32.const 13
    call $~lib/rt/stub/__new
    local.set $1
   end
   i32.const 24
   i32.const 14
   call $~lib/rt/stub/__new
   local.tee $5
   i32.const 16
   call $~lib/arraybuffer/ArrayBuffer#constructor
   i32.store
   local.get $5
   i32.const 3
   i32.store offset=4
   local.get $5
   i32.const 48
   call $~lib/arraybuffer/ArrayBuffer#constructor
   i32.store offset=8
   local.get $5
   i32.const 4
   i32.store offset=12
   local.get $5
   i32.const 0
   i32.store offset=16
   local.get $5
   i32.const 0
   i32.store offset=20
   local.get $1
   local.get $5
   i32.store
   local.get $4
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/JSON/Handler#addValue
   local.get $4
   i32.load
   local.get $1
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   local.get $3
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   drop
   local.get $3
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
   i32.const 1
   local.set $0
   loop $while-continue|0
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    local.set $4
    block $__inlined_func$~lib/string/String#charCodeAt0 (result i32)
     i32.const -1
     i32.const 2588
     i32.load
     i32.const 1
     i32.shr_u
     i32.eqz
     br_if $__inlined_func$~lib/string/String#charCodeAt0
     drop
     i32.const 2592
     i32.load16_u
    end
    local.get $4
    i32.ne
    if
     local.get $0
     if
      i32.const 0
      local.set $0
     else
      local.get $3
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
      local.set $4
      block $__inlined_func$~lib/string/String#charCodeAt2 (result i32)
       i32.const -1
       i32.const 2620
       i32.load
       i32.const 1
       i32.shr_u
       i32.eqz
       br_if $__inlined_func$~lib/string/String#charCodeAt2
       drop
       i32.const 2624
       i32.load16_u
      end
      local.get $4
      i32.ne
      if
       i32.const 2656
       i32.const 1984
       i32.const 190
       i32.const 11
       call $~lib/builtins/abort
       unreachable
      end
     end
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
     i32.store
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
     local.set $4
     block $__inlined_func$~lib/string/String#charCodeAt6 (result i32)
      i32.const -1
      i32.const 3404
      i32.load
      i32.const 1
      i32.shr_u
      i32.eqz
      br_if $__inlined_func$~lib/string/String#charCodeAt6
      drop
      i32.const 3408
      i32.load16_u
     end
     local.get $4
     i32.ne
     if
      i32.const 3440
      i32.const 1984
      i32.const 207
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
     drop
     br $while-continue|0
    end
   end
   local.get $3
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
   local.set $0
   block $__inlined_func$~lib/string/String#charCodeAt8 (result i32)
    i32.const -1
    i32.const 2588
    i32.load
    i32.const 1
    i32.shr_u
    i32.eqz
    br_if $__inlined_func$~lib/string/String#charCodeAt8
    drop
    i32.const 2592
    i32.load16_u
   end
   local.get $0
   i32.ne
   if
    i32.const 3488
    i32.const 1984
    i32.const 197
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.load
   local.tee $0
   i32.load
   i32.load offset=12
   i32.const 1
   i32.gt_s
   if
    local.get $0
    i32.load
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
   end
   i32.const 1
  end
  local.tee $0
  i32.eqz
  if
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray (result i32)
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    local.set $4
    i32.const 0
    block $__inlined_func$~lib/string/String#charCodeAt1 (result i32)
     i32.const -1
     i32.const 3612
     i32.load
     i32.const 1
     i32.shr_u
     i32.eqz
     br_if $__inlined_func$~lib/string/String#charCodeAt1
     drop
     i32.const 3616
     i32.load16_u
    end
    local.get $4
    i32.ne
    br_if $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseArray
    drop
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
    i32.load
    local.set $4
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
    i32.const 1088
    i32.store
    local.get $3
    i32.load
    local.set $1
    i32.const 4
    i32.const 21
    call $~lib/rt/stub/__new
    local.tee $0
    i32.const 0
    i32.store
    local.get $0
    i32.eqz
    if
     i32.const 0
     i32.const 13
     call $~lib/rt/stub/__new
     local.set $0
    end
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor
    i32.store
    local.get $1
    i32.load
    i32.load offset=12
    if
     local.get $1
     local.get $4
     local.get $0
     call $~lib/assemblyscript-json/JSON/Handler#addValue
    end
    local.get $1
    i32.load
    local.get $0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    drop
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
    i32.const 1
    local.set $0
    loop $while-continue|02
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
     local.set $4
     block $__inlined_func$~lib/string/String#charCodeAt03 (result i32)
      i32.const -1
      i32.const 3644
      i32.load
      i32.const 1
      i32.shr_u
      i32.eqz
      br_if $__inlined_func$~lib/string/String#charCodeAt03
      drop
      i32.const 3648
      i32.load16_u
     end
     local.get $4
     i32.ne
     if
      local.get $0
      if
       i32.const 0
       local.set $0
      else
       local.get $3
       call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
       local.set $4
       block $__inlined_func$~lib/string/String#charCodeAt24 (result i32)
        i32.const -1
        i32.const 2620
        i32.load
        i32.const 1
        i32.shr_u
        i32.eqz
        br_if $__inlined_func$~lib/string/String#charCodeAt24
        drop
        i32.const 2624
        i32.load16_u
       end
       local.get $4
       i32.ne
       if
        i32.const 2656
        i32.const 1984
        i32.const 224
        i32.const 11
        call $~lib/builtins/abort
        unreachable
       end
      end
      local.get $3
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
      drop
      br $while-continue|02
     end
    end
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
    local.set $0
    block $__inlined_func$~lib/string/String#charCodeAt4 (result i32)
     i32.const -1
     i32.const 3644
     i32.load
     i32.const 1
     i32.shr_u
     i32.eqz
     br_if $__inlined_func$~lib/string/String#charCodeAt4
     drop
     i32.const 3648
     i32.load16_u
    end
    local.get $0
    i32.ne
    if
     i32.const 3680
     i32.const 1984
     i32.const 230
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.load
    local.tee $0
    i32.load
    i32.load offset=12
    i32.const 1
    i32.gt_s
    if
     local.get $0
     i32.load
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
    end
    i32.const 1
   end
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseString (result i32)
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    local.set $4
    i32.const 0
    block $__inlined_func$~lib/string/String#charCodeAt15 (result i32)
     i32.const -1
     i32.const 2700
     i32.load
     i32.const 1
     i32.shr_u
     i32.eqz
     br_if $__inlined_func$~lib/string/String#charCodeAt15
     drop
     i32.const 2704
     i32.load16_u
    end
    local.get $4
    i32.ne
    br_if $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseString
    drop
    local.get $3
    i32.load
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
    i32.load
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readString
    local.set $5
    i32.const 4
    i32.const 23
    call $~lib/rt/stub/__new
    local.tee $1
    local.get $5
    i32.store
    local.get $1
    if (result i32)
     local.get $1
    else
     i32.const 0
     i32.const 13
     call $~lib/rt/stub/__new
    end
    call $~lib/assemblyscript-json/JSON/Handler#addValue
    i32.const 1
   end
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean (result i32)
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    local.set $0
    block $__inlined_func$~lib/string/String#charCodeAt66 (result i32)
     i32.const -1
     i32.const 3756
     i32.load
     i32.const 1
     i32.shr_u
     i32.eqz
     br_if $__inlined_func$~lib/string/String#charCodeAt66
     drop
     i32.const 3760
     i32.load16_u
    end
    local.get $0
    i32.eq
    if
     local.get $3
     i32.const 3760
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
     local.get $3
     i32.load
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     i32.load
     i32.const 0
     call $~lib/assemblyscript-json/JSON/Handler#setBoolean
     i32.const 1
     br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
    end
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    local.set $0
    block $__inlined_func$~lib/string/String#charCodeAt87 (result i32)
     i32.const -1
     i32.const 3868
     i32.load
     i32.const 1
     i32.shr_u
     i32.eqz
     br_if $__inlined_func$~lib/string/String#charCodeAt87
     drop
     i32.const 3872
     i32.load16_u
    end
    local.get $0
    i32.eq
    if
     local.get $3
     i32.const 3872
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
     local.get $3
     i32.load
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     i32.load
     i32.const 1
     call $~lib/assemblyscript-json/JSON/Handler#setBoolean
     i32.const 1
     br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseBoolean
    end
    i32.const 0
   end
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber (result i32)
    i32.const 0
    local.set $1
    i32.const 0
    local.set $4
    f64.const 1
    local.set $6
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    i32.const 45
    i32.eq
    if (result i32)
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
     local.set $0
     i32.const 1
     global.set $~argumentsLength
     f64.const -1
     local.set $6
     i32.const 1088
     local.get $0
     call $~lib/string/String.fromCharCode@varargs
     call $~lib/string/String#concat
    else
     i32.const 1088
    end
    local.set $0
    loop $while-continue|028
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
     i32.const 48
     i32.ge_s
     if (result i32)
      local.get $3
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 57
      i32.le_s
     else
      i32.const 0
     end
     if (result i32)
      i32.const 1
     else
      local.get $3
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 46
      i32.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $3
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 45
      i32.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $3
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 43
      i32.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $3
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 69
      i32.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $3
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
      i32.const 101
      i32.eq
     end
     if
      local.get $3
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readChar
      local.set $5
      i32.const 1
      global.set $~argumentsLength
      local.get $0
      local.get $5
      call $~lib/string/String.fromCharCode@varargs
      call $~lib/string/String#concat
      local.set $0
      i32.const 1
      local.get $5
      i32.const 45
      i32.eq
      i32.const 1
      local.get $5
      i32.const 43
      i32.eq
      i32.const 1
      local.get $5
      i32.const 46
      i32.eq
      i32.const 1
      local.get $5
      i32.const 101
      i32.eq
      local.get $5
      i32.const 69
      i32.eq
      select
      select
      select
      select
      if
       i32.const 1
       local.set $1
      else
       local.get $1
       i32.eqz
       if
        local.get $2
        f64.const 10
        f64.mul
        local.get $5
        i32.const 48
        i32.sub
        f64.convert_i32_s
        f64.add
        local.set $2
       end
       local.get $4
       i32.const 1
       i32.add
       local.set $4
      end
      br $while-continue|028
     end
    end
    local.get $4
    i32.const 0
    i32.gt_s
    if
     local.get $1
     if (result i32)
      i32.const 1
     else
      local.get $0
      i32.const 3904
      call $~lib/string/String.__eq
     end
     if
      local.get $3
      i32.load
      local.set $1
      local.get $3
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
      i32.load
      local.set $4
      local.get $0
      call $~lib/util/string/strtod
      local.set $2
      i32.const 8
      i32.const 25
      call $~lib/rt/stub/__new
      local.tee $0
      i32.eqz
      if
       i32.const 8
       i32.const 26
       call $~lib/rt/stub/__new
       local.set $0
      end
      local.get $0
      local.get $2
      f64.store
     else
      local.get $3
      i32.load
      local.set $1
      local.get $3
      call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
      i32.load
      local.set $4
      local.get $2
      local.get $6
      f64.mul
      i64.trunc_f64_s
      local.set $7
      i32.const 8
      i32.const 27
      call $~lib/rt/stub/__new
      local.tee $0
      local.get $7
      i64.store
     end
     local.get $1
     local.get $4
     local.get $0
     if (result i32)
      local.get $0
     else
      i32.const 0
      i32.const 13
      call $~lib/rt/stub/__new
     end
     call $~lib/assemblyscript-json/JSON/Handler#addValue
     i32.const 1
     br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNumber
    end
    i32.const 0
   end
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   block $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull (result i32)
    local.get $3
    call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#peekChar
    local.set $0
    block $__inlined_func$~lib/string/String#charCodeAt10 (result i32)
     i32.const -1
     i32.const 4124
     i32.load
     i32.const 1
     i32.shr_u
     i32.eqz
     br_if $__inlined_func$~lib/string/String#charCodeAt10
     drop
     i32.const 4128
     i32.load16_u
    end
    local.get $0
    i32.eq
    if
     local.get $3
     i32.const 4128
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#readAndAssert
     local.get $3
     i32.load
     local.get $3
     call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#get:state
     i32.load
     global.get $~lib/assemblyscript-json/JSON/NULL
     call $~lib/assemblyscript-json/JSON/Handler#addValue
     i32.const 1
     br $__inlined_func$~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseNull
    end
    i32.const 0
   end
   local.set $0
  end
  local.get $3
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#skipWhitespace
  local.get $0
 )
 (func $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#deserialize (param $0 i32) (param $1 i32)
  (local $2 i32)
  i32.const 12
  i32.const 20
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 1088
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#parseValue
  i32.eqz
  if
   i32.const 4160
   i32.const 1984
   i32.const 144
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array> (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  local.get $0
  call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#deserialize
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  local.tee $0
  i32.load
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
  global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.load
  local.set $0
  loop $while-continue|0
   local.get $0
   i32.load
   i32.load offset=12
   i32.const 0
   i32.gt_s
   if
    local.get $0
    i32.load
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
    br $while-continue|0
   end
  end
 )
 (func $~lib/near-sdk-bindgen/index/getInput (result i32)
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.input
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.register_len
  local.tee $1
  i64.const 4294967295
  i64.eq
  if
   call $~lib/near-sdk-core/env/env/env.panic
  end
  i64.const 0
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__new
  local.get $1
  i32.wrap_i64
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.read_register
  block $__inlined_func$~lib/rt/__instanceof (result i32)
   local.get $0
   call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
   local.tee $2
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $0
   i32.const 12000
   i32.load
   i32.le_u
   if
    loop $do-continue|0
     i32.const 1
     local.get $0
     i32.const 12
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof
     drop
     local.get $0
     i32.const 3
     i32.shl
     i32.const 12004
     i32.add
     i32.load offset=4
     local.tee $0
     br_if $do-continue|0
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 96
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  local.tee $0
  i32.eqz
  if
   i32.const 4352
   i32.const 4416
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/assemblyscript-json/JSON/Obj#get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#get
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 31
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1760
   i32.const 1872
   i32.const 64
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  local.get $0
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $3
  local.get $2
  call $~lib/memory/memory.fill
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|0
      i32.const 1
      local.get $2
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|01
      i32.const 1
      local.get $2
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|01
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    local.get $0
    return
   end
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof3 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|04
      i32.const 1
      local.get $2
      i32.const 28
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof3
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|04
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof10 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|011
      i32.const 1
      local.get $2
      i32.const 23
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof10
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|011
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String#concat
   i32.const 5264
   call $~lib/string/String#concat
   i32.const 4224
   i32.const 218
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/rt/__instanceof14 (result i32)
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $1
   i32.const 12000
   i32.load
   i32.le_u
   if
    loop $do-continue|015
     i32.const 1
     local.get $1
     i32.const 23
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof14
     drop
     local.get $1
     i32.const 3
     i32.shl
     i32.const 12004
     i32.add
     i32.load offset=4
     local.tee $1
     br_if $do-continue|015
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 222
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
 )
 (func $~lib/util/string/strtol<i64> (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.eqz
  if
   i64.const 0
   return
  end
  local.get $0
  i32.load16_u
  local.set $1
  loop $while-continue|0
   block $__inlined_func$~lib/util/string/isSpace (result i32)
    local.get $1
    i32.const 128
    i32.or
    i32.const 160
    i32.eq
    local.get $1
    i32.const 9
    i32.sub
    i32.const 4
    i32.le_u
    i32.or
    local.get $1
    i32.const 5760
    i32.lt_u
    br_if $__inlined_func$~lib/util/string/isSpace
    drop
    i32.const 1
    local.get $1
    i32.const -8192
    i32.add
    i32.const 10
    i32.le_u
    br_if $__inlined_func$~lib/util/string/isSpace
    drop
    block $break|0
     block $case6|0
      local.get $1
      i32.const 5760
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 8232
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 8233
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 8239
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 8287
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 12288
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 65279
      i32.eq
      br_if $case6|0
      br $break|0
     end
     i32.const 1
     br $__inlined_func$~lib/util/string/isSpace
    end
    i32.const 0
   end
   if
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.load16_u
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  i64.const 1
  local.set $3
  i32.const 1
  local.get $1
  i32.const 43
  i32.eq
  local.get $1
  i32.const 45
  i32.eq
  select
  if
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.eqz
   if
    i64.const 0
    return
   end
   i64.const -1
   i64.const 1
   local.get $1
   i32.const 45
   i32.eq
   select
   local.set $3
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   i32.load16_u
   local.set $1
  end
  local.get $2
  i32.const 2
  i32.gt_s
  i32.const 0
  local.get $1
  i32.const 48
  i32.eq
  select
  if
   block $break|1
    block $case2|1
     block $case1|1
      local.get $0
      i32.load16_u offset=2
      i32.const 32
      i32.or
      local.tee $1
      i32.const 98
      i32.ne
      if
       local.get $1
       i32.const 111
       i32.eq
       br_if $case1|1
       local.get $1
       i32.const 120
       i32.eq
       br_if $case2|1
       br $break|1
      end
      local.get $0
      i32.const 4
      i32.add
      local.set $0
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      i32.const 2
      local.set $5
      br $break|1
     end
     local.get $0
     i32.const 4
     i32.add
     local.set $0
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     i32.const 8
     local.set $5
     br $break|1
    end
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    i32.const 16
    local.set $5
   end
  end
  local.get $5
  i32.const 10
  local.get $5
  select
  local.set $5
  loop $while-continue|2
   block $while-break|2
    local.get $2
    local.tee $1
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    if
     local.get $5
     local.get $0
     i32.load16_u
     local.tee $1
     i32.const 48
     i32.sub
     i32.const 10
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 48
      i32.sub
     else
      local.get $1
      i32.const 65
      i32.sub
      i32.const 25
      i32.le_u
      if (result i32)
       local.get $1
       i32.const 55
       i32.sub
      else
       local.get $1
       i32.const 87
       i32.sub
       local.get $1
       local.get $1
       i32.const 97
       i32.sub
       i32.const 25
       i32.le_u
       select
      end
     end
     local.tee $1
     i32.le_u
     if
      local.get $4
      i64.eqz
      if
       i64.const 0
       return
      end
      br $while-break|2
     end
     local.get $1
     i64.extend_i32_u
     local.get $4
     local.get $5
     i64.extend_i32_s
     i64.mul
     i64.add
     local.set $4
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     br $while-continue|2
    end
   end
  end
  local.get $3
  local.get $4
  i64.mul
 )
 (func $~lib/near-sdk-bindgen/index/decode<u64,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|0
      i32.const 1
      local.get $2
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|01
      i32.const 1
      local.get $2
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|01
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 4464
    i32.const 5440
    call $~lib/string/String#concat
    i32.const 4624
    call $~lib/string/String#concat
    i32.const 4224
    i32.const 323
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof5 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|06
      i32.const 1
      local.get $2
      i32.const 23
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof5
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|06
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String#concat
   i32.const 4720
   call $~lib/string/String#concat
   i32.const 5440
   call $~lib/string/String#concat
   i32.const 5472
   call $~lib/string/String#concat
   i32.const 4224
   i32.const 346
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/rt/__instanceof11 (result i32)
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $1
   i32.const 12000
   i32.load
   i32.le_u
   if
    loop $do-continue|012
     i32.const 1
     local.get $1
     i32.const 23
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof11
     drop
     local.get $1
     i32.const 3
     i32.shl
     i32.const 12004
     i32.add
     i32.load offset=4
     local.tee $1
     br_if $do-continue|012
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 354
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/util/string/strtol<i64>
 )
 (func $~lib/near-sdk-bindgen/index/JSONTypeToString<~lib/assemblyscript-json/JSON/Value> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|0
      i32.const 1
      local.get $1
      i32.const 23
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 5808
   return
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|01
      i32.const 1
      local.get $1
      i32.const 24
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|01
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 5840
   return
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof2 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|03
      i32.const 1
      local.get $1
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof2
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|03
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 5888
   return
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof4 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|05
      i32.const 1
      local.get $1
      i32.const 21
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof4
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|05
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 5920
   return
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof6 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|07
      i32.const 1
      local.get $1
      i32.const 28
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof6
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|07
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 5952
   return
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof8 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|09
      i32.const 1
      local.get $1
      i32.const 27
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof8
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|09
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 5984
   return
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof10 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $0
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|011
      i32.const 1
      local.get $0
      i32.const 25
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof10
      drop
      local.get $0
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $0
      br_if $do-continue|011
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 6032
   return
  end
  i32.const 6064
 )
 (func $~lib/near-sdk-bindgen/index/decode<~lib/as-bignum/integer/safe/u128/u128,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $3
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|0
      i32.const 1
      local.get $3
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $3
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $3
      br_if $do-continue|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $3
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|01
      i32.const 1
      local.get $3
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $3
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $3
      br_if $do-continue|01
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    local.get $0
    return
   end
  end
  local.get $0
  local.tee $2
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof3 (result i32)
    local.get $2
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $0
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|04
      i32.const 1
      local.get $0
      i32.const 28
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof3
      drop
      local.get $0
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $0
      br_if $do-continue|04
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $2
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof10 (result i32)
    local.get $2
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $0
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|011
      i32.const 1
      local.get $0
      i32.const 23
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof10
      drop
      local.get $0
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $0
      br_if $do-continue|011
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String#concat
   i32.const 5696
   call $~lib/string/String#concat
   local.get $2
   call $~lib/near-sdk-bindgen/index/JSONTypeToString<~lib/assemblyscript-json/JSON/Value>
   call $~lib/string/String#concat
   i32.const 4224
   i32.const 468
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof15 (result i32)
    local.get $2
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $3
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|016
      i32.const 1
      local.get $3
      i32.const 23
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof15
      drop
      local.get $3
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $3
      br_if $do-continue|016
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String#concat
   i32.const 5264
   call $~lib/string/String#concat
   i32.const 4224
   i32.const 218
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/rt/__instanceof19 (result i32)
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $1
   i32.const 12000
   i32.load
   i32.le_u
   if
    loop $do-continue|020
     i32.const 1
     local.get $1
     i32.const 23
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof19
     drop
     local.get $1
     i32.const 3
     i32.shl
     i32.const 12004
     i32.add
     i32.load offset=4
     local.tee $1
     br_if $do-continue|020
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 222
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  call $~lib/as-bignum/utils/atou128
 )
 (func $~lib/near-sdk-bindgen/index/decode<assembly/model/ContractCall,~lib/assemblyscript-json/JSON/Value> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|0
      i32.const 1
      local.get $1
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1088
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|01
      i32.const 1
      local.get $1
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|01
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1088
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    local.get $0
    return
   end
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof3 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|04
      i32.const 1
      local.get $1
      i32.const 28
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof3
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|04
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof10 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|011
      i32.const 1
      local.get $1
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof10
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|011
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1
  else
   local.get $0
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof12 (result i32)
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 12000
     i32.load
     i32.le_u
     if
      loop $do-continue|013
       i32.const 1
       local.get $1
       i32.const 12
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof12
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 12004
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-continue|013
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
  end
  i32.eqz
  if
   i32.const 4832
   i32.const 1088
   call $~lib/string/String#concat
   i32.const 4720
   call $~lib/string/String#concat
   i32.const 5072
   call $~lib/string/String#concat
   i32.const 5120
   call $~lib/string/String#concat
   i32.const 3872
   i32.const 3760
   local.get $0
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof18 (result i32)
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 12000
     i32.load
     i32.le_u
     if
      loop $do-continue|019
       i32.const 1
       local.get $1
       i32.const 12
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof18
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 12004
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-continue|019
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   select
   call $~lib/string/String#concat
   i32.const 4224
   i32.const 401
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 28
  i32.const 29
  call $~lib/rt/stub/__new
  block $__inlined_func$~lib/rt/__instanceof21 (result i32)
   local.get $0
   local.tee $2
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $0
   i32.const 12000
   i32.load
   i32.le_u
   if
    loop $do-continue|022
     i32.const 1
     local.get $0
     i32.const 12
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof21
     drop
     local.get $0
     i32.const 3
     i32.shl
     i32.const 12004
     i32.add
     i32.load offset=4
     local.tee $0
     br_if $do-continue|022
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 418
   i32.const 47
   call $~lib/builtins/abort
   unreachable
  end
  local.tee $0
  local.get $2
  i32.load
  i32.const 5200
  i32.const 5200
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $2
   i32.const 5200
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  i32.store
  local.get $0
  local.get $2
  i32.load
  i32.const 5344
  i32.const 5344
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $2
   i32.const 5344
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  i32.store offset=4
  local.get $0
  local.get $2
  i32.load
  i32.const 5376
  i32.const 5376
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $2
   i32.const 5376
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  i32.store offset=8
  local.get $0
  local.get $2
  i32.load
  i32.const 5408
  i32.const 5408
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i64)
   local.get $2
   i32.const 5408
   call $~lib/near-sdk-bindgen/index/decode<u64,~lib/assemblyscript-json/JSON/Obj>
  else
   i64.const 0
  end
  i64.store offset=16
  local.get $0
  local.get $2
  i32.load
  i32.const 5632
  i32.const 5632
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $2
   i32.const 5632
   call $~lib/near-sdk-bindgen/index/decode<~lib/as-bignum/integer/safe/u128/u128,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  i32.store offset=24
  local.get $0
 )
 (func $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<assembly/model/ContractCall>,~lib/assemblyscript-json/JSON/Value> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|0
      i32.const 1
      local.get $1
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if (result i32)
   i32.const 1088
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|01
      i32.const 1
      local.get $1
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|01
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1088
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    local.get $0
    return
   end
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof3 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|04
      i32.const 1
      local.get $1
      i32.const 28
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof3
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|04
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  i32.const 0
  local.set $1
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof1 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|02
      i32.const 1
      local.get $2
      i32.const 21
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof1
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|02
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   i32.const 1088
   call $~lib/string/String#concat
   i32.const 4896
   call $~lib/string/String#concat
   i32.const 4224
   i32.const 226
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.const 30
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 32
  call $~lib/memory/memory.fill
  local.get $3
  local.get $2
  i32.store
  local.get $3
  local.get $2
  i32.store offset=4
  local.get $3
  i32.const 32
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  block $__inlined_func$~lib/rt/__instanceof13 (result i32)
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $2
   i32.const 12000
   i32.load
   i32.le_u
   if
    loop $do-continue|024
     i32.const 1
     local.get $2
     i32.const 21
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof13
     drop
     local.get $2
     i32.const 3
     i32.shl
     i32.const 12004
     i32.add
     i32.load offset=4
     local.tee $2
     br_if $do-continue|024
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 231
   i32.const 26
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $3
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-bindgen/index/decode<assembly/model/ContractCall,~lib/assemblyscript-json/JSON/Value>
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|0
      i32.const 1
      local.get $1
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if (result i32)
   i32.const 4304
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|01
      i32.const 1
      local.get $1
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|01
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 4304
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    local.get $0
    return
   end
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof3 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $1
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|04
      i32.const 1
      local.get $1
      i32.const 28
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof3
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $1
      br_if $do-continue|04
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  i32.const 0
  local.set $1
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof1 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|02
      i32.const 1
      local.get $2
      i32.const 21
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof1
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|02
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   i32.const 4304
   call $~lib/string/String#concat
   i32.const 4896
   call $~lib/string/String#concat
   i32.const 4224
   i32.const 226
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#constructor
  local.set $2
  block $__inlined_func$~lib/rt/__instanceof13 (result i32)
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $3
   i32.const 12000
   i32.load
   i32.le_u
   if
    loop $do-continue|024
     i32.const 1
     local.get $3
     i32.const 21
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof13
     drop
     local.get $3
     i32.const 3
     i32.shl
     i32.const 12004
     i32.add
     i32.load offset=4
     local.tee $3
     br_if $do-continue|024
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 231
   i32.const 26
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<assembly/model/ContractCall>,~lib/assemblyscript-json/JSON/Value>
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/near-sdk-core/util/util.read_register (result i32)
  (local $0 i32)
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.register_len
  i32.wrap_i64
  local.set $0
  i64.const 0
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__new
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.read_register
  local.get $0
 )
 (func $~lib/near-sdk-core/util/util.bytesToString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=8
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  i32.add
  local.set $2
  local.get $0
  i32.load
  local.tee $3
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  local.tee $0
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $0
   local.get $1
   local.get $0
   local.get $1
   i32.lt_s
   select
  end
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $1
   local.get $1
   local.get $2
   i32.gt_s
   select
  end
  local.get $0
  i32.sub
  local.tee $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  local.get $3
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  call $~lib/string/String.UTF8.decodeUnsafe
 )
 (func $~lib/near-sdk-core/util/util.read_register_string (result i32)
  (local $0 i32)
  call $~lib/near-sdk-core/util/util.read_register
  call $~lib/near-sdk-core/util/util.bytesToString
  local.tee $0
  i32.const 0
  call $~lib/string/String.__eq
  if
   i32.const 1088
   local.set $0
  else
   local.get $0
   i32.eqz
   if
    i32.const 1920
    i32.const 6240
    i32.const 93
    i32.const 34
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $4
  local.get $1
  i32.const 0
  i32.ne
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load16_u
     local.tee $3
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $3
      i32.eqz
      i32.and
      br_if $while-break|0
      local.get $2
      i32.const 1
      i32.add
     else
      local.get $3
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
      else
       local.get $4
       local.get $0
       i32.const 2
       i32.add
       i32.gt_u
       i32.const 0
       local.get $3
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       select
       if
        local.get $0
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         br $while-continue|0
        end
       end
       local.get $2
       i32.const 3
       i32.add
      end
     end
     local.set $2
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.tee $1
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $2
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  i32.add
  local.set $4
  local.get $2
  local.set $0
  loop $while-continue|0
   local.get $1
   local.get $4
   i32.lt_u
   if
    local.get $1
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $0
     local.get $3
     i32.store8
     local.get $0
     i32.const 1
     i32.add
    else
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $0
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $0
      i32.const 2
      i32.add
     else
      local.get $4
      local.get $1
      i32.const 2
      i32.add
      i32.gt_u
      i32.const 0
      local.get $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $1
       i32.load16_u offset=2
       local.tee $5
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $0
        local.get $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $5
        i32.const 1023
        i32.and
        i32.or
        local.tee $3
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $3
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $3
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $3
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $while-continue|0
       end
      end
      local.get $0
      local.get $3
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $0
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $0
      i32.const 3
      i32.add
     end
    end
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
 )
 (func $~lib/near-sdk-core/util/util.stringToBytes (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1
  call $~lib/string/String.UTF8.byteLength
  i32.const 1
  i32.sub
  local.set $1
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__new
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $2
  i32.load offset=4
  local.get $0
  call $~lib/string/String.UTF8.encode
  local.get $1
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#contains (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/string/String#concat
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.storage_has_key
  i64.const 0
  i64.ne
 )
 (func $assembly/index/_is_whitelisted (param $0 i32)
  global.get $assembly/index/admins
  i32.load
  local.get $0
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#contains
  i32.eqz
  if
   local.get $0
   i32.const 6320
   call $~lib/string/String#concat
   i32.const 6432
   i32.const 164
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 6912
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  local.get $0
  local.get $0
  i32.const 31
  i32.shr_u
  local.tee $3
  select
  local.tee $1
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $1
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $1
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $1
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $1
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.get $3
  i32.add
  local.tee $0
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__new
  local.set $2
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $2
    local.get $0
    i32.const 4
    i32.sub
    local.tee $0
    i32.const 1
    i32.shl
    i32.add
    local.get $4
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 6924
    i32.add
    i64.load32_u
    local.get $4
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 6924
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $2
   local.get $0
   i32.const 2
   i32.sub
   local.tee $0
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 6924
   i32.add
   i32.load
   i32.store
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   local.get $0
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 6924
   i32.add
   i32.load
   i32.store
  else
   local.get $2
   local.get $0
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16
  end
  local.get $3
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 0
  call $~lib/rt/stub/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   call $~lib/memory/memory.copy
  end
  i32.const 16
  local.get $1
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/near-sdk-core/contract/Context.get:accountBalance (result i32)
  (local $0 i32)
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__new
  i32.const 16
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.account_balance
  local.get $0
  i32.load offset=8
  if (result i32)
   local.get $0
   i32.load offset=8
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8672
   i32.const 132
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i32.load offset=4
  local.tee $0
  i64.load
  local.get $0
  i64.load offset=8
  call $~lib/as-bignum/integer/u128/u128#constructor
 )
 (func $~lib/as-bignum/integer/safe/u128/u128.mul (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.eqz
  if (result i32)
   i32.const 1
  else
   local.get $1
   i64.load
   local.get $1
   i64.load offset=8
   i64.or
   i64.eqz
  end
  if
   i32.const 16
   i32.const 8
   call $~lib/rt/stub/__new
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   return
  end
  local.get $0
  i64.load offset=8
  local.tee $6
  local.get $6
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $2
  i64.const -1
  i64.xor
  local.get $6
  i64.and
  local.get $2
  local.get $0
  i64.load
  i64.and
  i64.or
  i64.clz
  i32.wrap_i64
  local.get $2
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  local.get $1
  i64.load offset=8
  local.tee $4
  local.get $4
  i64.const 1
  i64.sub
  i64.xor
  i64.const 63
  i64.shr_s
  local.tee $3
  i64.const -1
  i64.xor
  local.get $4
  i64.and
  local.get $3
  local.get $1
  i64.load
  i64.and
  i64.or
  i64.clz
  i32.wrap_i64
  local.get $3
  i32.wrap_i64
  i32.const 64
  i32.and
  i32.add
  i32.add
  local.tee $5
  i32.const 127
  i32.lt_u
  if
   i32.const 8752
   i32.const 8576
   i32.const 252
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 127
  i32.eq
  if
   i32.const 0
   local.get $1
   i64.load offset=8
   local.tee $2
   i64.const 63
   i64.shl
   local.get $1
   i64.load
   i64.const 1
   i64.shr_u
   i64.or
   local.get $2
   i64.const 1
   i64.shr_u
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.tee $5
   i64.load
   local.tee $2
   i64.const 4294967295
   i64.and
   local.tee $4
   local.get $0
   i64.load
   local.tee $3
   i64.const 4294967295
   i64.and
   local.tee $7
   i64.mul
   local.set $6
   local.get $7
   local.get $2
   i64.const 32
   i64.shr_u
   local.tee $7
   i64.mul
   local.get $4
   local.get $3
   i64.const 32
   i64.shr_u
   local.tee $8
   i64.mul
   local.get $6
   i64.const 32
   i64.shr_u
   i64.add
   local.tee $9
   i64.const 4294967295
   i64.and
   i64.add
   local.set $4
   local.get $7
   local.get $8
   i64.mul
   local.get $9
   i64.const 32
   i64.shr_u
   i64.add
   local.get $2
   local.get $0
   i64.load offset=8
   i64.mul
   i64.add
   local.get $3
   local.get $5
   i64.load offset=8
   i64.mul
   i64.add
   local.get $4
   i64.const 32
   i64.shr_u
   i64.add
   global.set $~lib/as-bignum/globals/__res128_hi
   i32.const 0
   local.get $6
   i64.const 4294967295
   i64.and
   local.get $4
   i64.const 32
   i64.shl
   i64.or
   global.get $~lib/as-bignum/globals/__res128_hi
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.tee $5
   i64.load offset=8
   i64.const 63
   i64.shr_u
   i32.wrap_i64
   if
    i32.const 8752
    i32.const 8576
    i32.const 260
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.get $5
   i64.load
   local.tee $2
   i64.const 1
   i64.shl
   local.get $5
   i64.load offset=8
   i64.const 1
   i64.shl
   local.get $2
   i64.const 63
   i64.shr_u
   i64.or
   call $~lib/as-bignum/integer/u128/u128#constructor
   local.set $5
   local.get $1
   i64.load
   i64.const 1
   i64.and
   i32.wrap_i64
   if
    i32.const 0
    local.get $5
    i64.load
    local.tee $2
    local.get $0
    i64.load
    i64.add
    local.tee $3
    local.get $2
    local.get $3
    i64.gt_u
    i64.extend_i32_u
    local.get $5
    i64.load offset=8
    local.get $0
    i64.load offset=8
    i64.add
    i64.add
    call $~lib/as-bignum/integer/u128/u128#constructor
    local.tee $5
    i64.load offset=8
    local.tee $2
    local.get $0
    i64.load offset=8
    local.tee $3
    i64.eq
    if (result i32)
     local.get $5
     i64.load
     local.get $0
     i64.load
     i64.lt_u
    else
     local.get $2
     local.get $3
     i64.lt_u
    end
    if
     i32.const 8752
     i32.const 8576
     i32.const 269
     i32.const 11
     call $~lib/builtins/abort
     unreachable
    end
   end
   local.get $5
   return
  end
  local.get $1
  i64.load
  local.tee $2
  i64.const 4294967295
  i64.and
  local.tee $4
  local.get $0
  i64.load
  local.tee $3
  i64.const 4294967295
  i64.and
  local.tee $7
  i64.mul
  local.set $6
  local.get $7
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $7
  i64.mul
  local.get $4
  local.get $3
  i64.const 32
  i64.shr_u
  local.tee $8
  i64.mul
  local.get $6
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $9
  i64.const 4294967295
  i64.and
  i64.add
  local.set $4
  local.get $7
  local.get $8
  i64.mul
  local.get $9
  i64.const 32
  i64.shr_u
  i64.add
  local.get $2
  local.get $0
  i64.load offset=8
  i64.mul
  i64.add
  local.get $3
  local.get $1
  i64.load offset=8
  i64.mul
  i64.add
  local.get $4
  i64.const 32
  i64.shr_u
  i64.add
  global.set $~lib/as-bignum/globals/__res128_hi
  i32.const 0
  local.get $6
  i64.const 4294967295
  i64.and
  local.get $4
  i64.const 32
  i64.shl
  i64.or
  global.get $~lib/as-bignum/globals/__res128_hi
  call $~lib/as-bignum/integer/u128/u128#constructor
 )
 (func $~lib/as-bignum/integer/safe/u128/u128.sub (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.load offset=8
  local.tee $2
  local.get $1
  i64.load offset=8
  local.tee $3
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.lt_u
  else
   local.get $2
   local.get $3
   i64.lt_u
  end
  if
   i32.const 8832
   i32.const 8576
   i32.const 239
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  i64.load
  local.tee $2
  local.get $1
  i64.load
  i64.sub
  local.tee $3
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.sub
  local.get $2
  local.get $3
  i64.lt_u
  i64.extend_i32_u
  i64.sub
  call $~lib/as-bignum/integer/u128/u128#constructor
 )
 (func $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 2080
    i32.const 1872
    i32.const 115
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/near-sdk-core/promise/ContractPromiseBatch.create (param $0 i32) (result i32)
  (local $1 i64)
  local.get $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.promise_batch_create
  local.set $1
  i32.const 8
  i32.const 35
  call $~lib/rt/stub/__new
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $~lib/assemblyscript-json/util/index/Buffer.fromString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/string/String.UTF8.encode
  local.tee $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.eqz
  if
   i32.const 12
   i32.const 15
   call $~lib/rt/stub/__new
   i32.const 0
   call $~lib/arraybuffer/ArrayBufferView#constructor
   return
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $2
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
 )
 (func $~lib/near-sdk-core/promise/ContractPromiseBatch#function_call<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (result i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $1
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__new
  i32.const 16
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $5
  i32.load offset=4
  local.tee $6
  local.get $3
  i64.load
  i64.store
  local.get $6
  local.get $3
  i64.load offset=8
  i64.store offset=8
  local.get $0
  i64.load
  local.get $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  local.get $2
  i32.load offset=8
  i64.extend_i32_s
  local.get $2
  i32.load offset=4
  i64.extend_i32_u
  local.get $5
  i32.load offset=4
  i64.extend_i32_u
  local.get $4
  call $~lib/near-sdk-core/env/env/env.promise_batch_action_function_call
  local.get $0
 )
 (func $~lib/string/String#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $4
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $3
  local.get $2
  local.get $3
  i32.lt_s
  select
  local.set $2
  local.get $3
  local.get $4
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.le_s
   if
    local.get $0
    local.get $2
    local.get $1
    local.get $4
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const -1
 )
 (func $~lib/string/String#replaceAll (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $6
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $9
  i32.le_u
  if
   local.get $6
   local.get $9
   i32.ge_u
   if (result i32)
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/string/String.__eq
    select
   else
    local.get $0
   end
   return
  end
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $7
  local.get $9
  i32.eqz
  if
   local.get $7
   i32.eqz
   if
    local.get $0
    return
   end
   local.get $6
   local.get $7
   local.get $6
   i32.const 1
   i32.add
   i32.mul
   i32.add
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/stub/__new
   local.tee $3
   local.get $2
   local.get $7
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
   local.get $7
   local.set $1
   loop $for-loop|0
    local.get $4
    local.get $6
    i32.lt_u
    if
     local.get $3
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     i32.store16
     local.get $3
     local.get $1
     i32.const 1
     i32.add
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $7
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $7
     i32.add
     local.set $1
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   local.get $3
   return
  end
  local.get $7
  local.get $9
  i32.eq
  if
   local.get $6
   i32.const 1
   i32.shl
   local.tee $3
   i32.const 1
   call $~lib/rt/stub/__new
   local.tee $4
   local.get $0
   local.get $3
   call $~lib/memory/memory.copy
   loop $while-continue|1
    local.get $0
    local.get $1
    local.get $11
    call $~lib/string/String#indexOf
    local.tee $3
    i32.const -1
    i32.xor
    if
     local.get $4
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $7
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $3
     local.get $9
     i32.add
     local.set $11
     br $while-continue|1
    end
   end
   local.get $4
   return
  end
  local.get $6
  local.set $5
  loop $while-continue|2
   local.get $0
   local.get $1
   local.get $11
   call $~lib/string/String#indexOf
   local.tee $8
   i32.const -1
   i32.xor
   if
    local.get $3
    local.tee $4
    if (result i32)
     local.get $4
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.eqz
    else
     i32.const 1
    end
    if (result i32)
     local.get $6
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/stub/__new
    else
     local.get $4
    end
    local.set $3
    local.get $5
    local.get $7
    local.get $10
    local.get $8
    local.get $11
    i32.sub
    local.tee $4
    i32.add
    i32.add
    i32.lt_u
    if
     local.get $3
     local.get $5
     i32.const 1
     i32.shl
     local.tee $5
     i32.const 1
     i32.shl
     call $~lib/rt/stub/__renew
     local.set $3
    end
    local.get $3
    local.get $10
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $11
    i32.const 1
    i32.shl
    i32.add
    local.get $4
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $3
    local.get $4
    local.get $10
    i32.add
    local.tee $4
    i32.const 1
    i32.shl
    i32.add
    local.get $2
    local.get $7
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $4
    local.get $7
    i32.add
    local.set $10
    local.get $8
    local.get $9
    i32.add
    local.set $11
    br $while-continue|2
   end
  end
  local.get $3
  if
   local.get $5
   local.get $10
   local.get $6
   local.get $11
   i32.sub
   local.tee $1
   i32.add
   i32.lt_u
   if
    local.get $3
    local.get $5
    i32.const 1
    i32.shl
    local.tee $5
    i32.const 1
    i32.shl
    call $~lib/rt/stub/__renew
    local.set $3
   end
   local.get $1
   if
    local.get $3
    local.get $10
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $11
    i32.const 1
    i32.shl
    i32.add
    local.get $1
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
   end
   local.get $5
   local.get $1
   local.get $10
   i32.add
   local.tee $0
   i32.gt_u
   if (result i32)
    local.get $3
    local.get $0
    i32.const 1
    i32.shl
    call $~lib/rt/stub/__renew
   else
    local.get $3
   end
   return
  end
  local.get $0
 )
 (func $~lib/near-sdk-core/contract/ContractPromise.create<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $0
  local.get $1
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $1
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__new
  i32.const 16
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $5
  i32.load offset=4
  local.tee $6
  local.get $4
  i64.load
  i64.store
  local.get $6
  local.get $4
  i64.load offset=8
  i64.store offset=8
  local.get $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  local.get $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  local.get $2
  i32.load offset=8
  i64.extend_i32_s
  local.get $2
  i32.load offset=4
  i64.extend_i32_u
  local.get $5
  i32.load offset=4
  i64.extend_i32_u
  local.get $3
  call $~lib/near-sdk-core/env/env/env.promise_create
  local.set $3
  i32.const 8
  i32.const 36
  call $~lib/rt/stub/__new
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  local.get $3
  i64.store
  local.get $0
 )
 (func $~lib/near-sdk-core/contract/ContractPromise#then<~lib/typedarray/Uint8Array> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $1
  local.get $2
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $2
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__new
  i32.const 16
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $6
  i32.load offset=4
  local.tee $7
  local.get $5
  i64.load
  i64.store
  local.get $7
  local.get $5
  i64.load offset=8
  i64.store offset=8
  local.get $0
  i64.load
  local.get $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  local.get $2
  i32.load offset=8
  i64.extend_i32_s
  local.get $2
  i32.load offset=4
  i64.extend_i32_u
  local.get $3
  i32.load offset=8
  i64.extend_i32_s
  local.get $3
  i32.load offset=4
  i64.extend_i32_u
  local.get $6
  i32.load offset=4
  i64.extend_i32_u
  local.get $4
  call $~lib/near-sdk-core/env/env/env.promise_then
  local.set $4
  i32.const 8
  i32.const 36
  call $~lib/rt/stub/__new
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  local.get $4
  i64.store
  local.get $0
 )
 (func $assembly/index/_internal_multicall (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  local.get $0
  i32.load offset=12
  i32.eqz
  if
   i32.const 6496
   i32.const 6432
   i32.const 32
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 32
  call $~lib/rt/stub/__new
  local.tee $5
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $5
  i32.const 3
  i32.store offset=4
  local.get $5
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $5
  i32.const 4
  i32.store offset=12
  local.get $5
  i32.const 0
  i32.store offset=16
  local.get $5
  i32.const 0
  i32.store offset=20
  i32.const 16
  i32.const 8
  call $~lib/rt/stub/__new
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.set $1
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const 0
   i32.ge_s
   if
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=12
    i32.eqz
    if
     i32.const 6692
     local.get $3
     call $~lib/util/number/itoa32
     i32.store
     i32.const 6688
     i32.const 6684
     i32.load
     i32.const 2
     i32.shr_u
     call $~lib/util/string/joinStringArray
     i32.const 6432
     i32.const 36
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=24
    local.tee $2
    i64.load
    local.tee $7
    local.get $1
    i64.load
    i64.add
    local.set $8
    local.get $7
    local.get $8
    i64.gt_u
    i64.extend_i32_u
    local.tee $10
    local.get $1
    i64.load offset=8
    local.tee $11
    local.get $2
    i64.load offset=8
    local.tee $12
    i64.add
    i64.add
    local.tee $7
    local.get $11
    i64.xor
    local.get $7
    local.get $12
    i64.xor
    i64.and
    local.get $10
    i64.lt_u
    if
     i32.const 8496
     i32.const 8576
     i32.const 232
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 16
    i32.const 8
    call $~lib/rt/stub/__new
    local.get $8
    local.get $7
    call $~lib/as-bignum/integer/u128/u128#constructor
    local.set $1
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=12
    i32.const 1
    i32.eq
    if
     local.get $5
     local.get $0
     local.get $3
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.const 0
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.tee $2
     i32.load
     local.tee $4
     local.get $4
     call $~lib/util/hash/HASH<~lib/string/String>
     call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
     if
      local.get $5
      local.get $2
      i32.load
      call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#get
      local.tee $4
      local.get $2
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      local.get $5
      local.get $2
      i32.load
      local.get $4
      call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set
     else
      local.get $2
      i32.load
      local.set $6
      i32.const 1
      i32.const 30
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $4
      i32.load offset=4
      drop
      local.get $4
      i32.load offset=4
      local.get $2
      i32.store
      local.get $5
      local.get $6
      local.get $4
      call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#set
     end
     i32.const 1
     local.get $0
     i32.load offset=12
     local.tee $4
     local.get $3
     i32.const 0
     i32.lt_s
     if (result i32)
      local.get $3
      local.get $4
      i32.add
      local.tee $2
      i32.const 0
      local.get $2
      i32.const 0
      i32.gt_s
      select
     else
      local.get $3
      local.get $4
      local.get $3
      local.get $4
      i32.lt_s
      select
     end
     local.tee $2
     i32.sub
     local.tee $6
     local.get $6
     i32.const 1
     i32.gt_s
     select
     local.tee $6
     i32.const 0
     local.get $6
     i32.const 0
     i32.gt_s
     select
     local.tee $6
     i32.const 31
     i32.const 0
     call $~lib/rt/__newArray
     i32.load offset=4
     local.get $0
     i32.load offset=4
     local.tee $9
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.tee $13
     local.get $6
     i32.const 2
     i32.shl
     call $~lib/memory/memory.copy
     local.get $4
     local.get $2
     local.get $6
     i32.add
     local.tee $2
     i32.ne
     if
      local.get $13
      local.get $9
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      local.get $4
      local.get $2
      i32.sub
      i32.const 2
      i32.shl
      call $~lib/memory/memory.copy
     end
     local.get $0
     local.get $4
     local.get $6
     i32.sub
     i32.store offset=12
    end
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|0
   end
  end
  call $~lib/near-sdk-core/contract/Context.get:accountBalance
  global.get $assembly/index/storageCosts
  i32.load
  i32.const 0
  call $~lib/near-sdk-core/env/env/env.storage_usage
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#constructor
  call $~lib/as-bignum/integer/safe/u128/u128.mul
  call $~lib/as-bignum/integer/safe/u128/u128.sub
  local.tee $2
  local.set $3
  local.get $1
  i64.load offset=8
  local.tee $7
  local.get $2
  i64.load offset=8
  local.tee $8
  i64.eq
  if (result i32)
   local.get $1
   i64.load
   local.get $3
   i64.load
   i64.gt_u
  else
   local.get $7
   local.get $8
   i64.gt_u
  end
  if
   i32.const 8912
   i32.const 6432
   i32.const 50
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $3
  i32.const 0
  local.set $1
  local.get $5
  i32.load offset=8
  local.set $4
  local.get $5
  i32.load offset=16
  local.tee $6
  call $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#constructor
  local.set $2
  loop $for-loop|03
   local.get $3
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $3
    i32.const 12
    i32.mul
    i32.add
    local.tee $9
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $2
     local.get $1
     local.get $9
     i32.load offset=4
     call $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#__set
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|03
   end
  end
  local.get $2
  local.get $1
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $2
  local.get $1
  i32.store offset=12
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   local.get $5
   i32.load offset=20
   i32.lt_s
   if
    block $for-continue|1
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load offset=12
     i32.const 1
     i32.le_s
     if
      local.get $0
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      br $for-continue|1
     end
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load offset=12
     i32.const 1
     i32.sub
     local.set $4
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.get $4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load
     call $~lib/near-sdk-core/promise/ContractPromiseBatch.create
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.get $4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load offset=4
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.get $4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load offset=8
     call $~lib/assemblyscript-json/util/index/Buffer.fromString
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.get $4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.load offset=24
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     local.get $4
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i64.load offset=16
     call $~lib/near-sdk-core/promise/ContractPromiseBatch#function_call<~lib/typedarray/Uint8Array>
     local.set $3
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     loop $for-loop|2
      local.get $4
      i32.const 0
      i32.ge_s
      if
       local.get $3
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       local.get $4
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       i32.load offset=4
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       local.get $4
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       i32.load offset=8
       i32.const 8976
       i32.const 2704
       call $~lib/string/String#replaceAll
       i32.const 9008
       i32.const 2944
       call $~lib/string/String#replaceAll
       call $~lib/assemblyscript-json/util/index/Buffer.fromString
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       local.get $4
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       i32.load offset=24
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       local.get $4
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       i64.load offset=16
       call $~lib/near-sdk-core/promise/ContractPromiseBatch#function_call<~lib/typedarray/Uint8Array>
       local.set $3
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       br $for-loop|2
      end
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  i32.const 0
  local.set $1
  loop $for-loop|3
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    local.tee $2
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load
    local.get $2
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=4
    local.get $2
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=8
    call $~lib/assemblyscript-json/util/index/Buffer.fromString
    local.get $2
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i64.load offset=16
    local.get $2
    i32.const 0
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.load offset=24
    call $~lib/near-sdk-core/contract/ContractPromise.create<~lib/typedarray/Uint8Array>
    local.set $5
    i32.const 1
    local.set $3
    loop $for-loop|01
     local.get $3
     local.get $2
     i32.load offset=12
     i32.lt_s
     if
      local.get $5
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      i32.load
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      i32.load offset=4
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      i32.load offset=8
      i32.const 8976
      i32.const 2704
      call $~lib/string/String#replaceAll
      i32.const 9008
      i32.const 2944
      call $~lib/string/String#replaceAll
      call $~lib/assemblyscript-json/util/index/Buffer.fromString
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      i64.load offset=16
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
      i32.load offset=24
      call $~lib/near-sdk-core/contract/ContractPromise#then<~lib/typedarray/Uint8Array>
      local.set $5
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|01
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|3
   end
  end
 )
 (func $assembly/index/__wrapper_multicall
  (local $0 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.load
  i32.const 4304
  i32.const 4304
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 6112
   i32.const 4304
   call $~lib/string/String#concat
   i32.const 4720
   call $~lib/string/String#concat
   i32.const 4496
   call $~lib/string/String#concat
   i32.const 6160
   call $~lib/string/String#concat
   i32.const 4224
   i32.const 33
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.predecessor_account_id
  call $~lib/near-sdk-core/util/util.read_register_string
  call $assembly/index/_is_whitelisted
  call $assembly/index/_internal_multicall
 )
 (func $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String> (param $0 i32) (result i32)
  i32.const 6112
  local.get $0
  call $~lib/string/String#concat
  i32.const 4720
  call $~lib/string/String#concat
  i32.const 5232
  call $~lib/string/String#concat
  i32.const 6160
  call $~lib/string/String#concat
  i32.const 4224
  i32.const 33
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/JSON/Obj#getString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/assemblyscript-json/JSON/Obj#get
  local.tee $0
  if (result i32)
   local.get $0
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof (result i32)
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 12000
     i32.load
     i32.le_u
     if
      loop $do-continue|0
       i32.const 1
       local.get $1
       i32.const 23
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 12004
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-continue|0
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    local.tee $1
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $0
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|01
      i32.const 1
      local.get $0
      i32.const 23
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $0
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $0
      br_if $do-continue|01
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 2496
    i32.const 361
    i32.const 21
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   return
  end
  i32.const 0
 )
 (func $~lib/util/string/strtol<f64> (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.eqz
  if
   f64.const nan:0x8000000000000
   return
  end
  local.get $0
  i32.load16_u
  local.set $1
  loop $while-continue|0
   block $__inlined_func$~lib/util/string/isSpace (result i32)
    local.get $1
    i32.const 128
    i32.or
    i32.const 160
    i32.eq
    local.get $1
    i32.const 9
    i32.sub
    i32.const 4
    i32.le_u
    i32.or
    local.get $1
    i32.const 5760
    i32.lt_u
    br_if $__inlined_func$~lib/util/string/isSpace
    drop
    i32.const 1
    local.get $1
    i32.const -8192
    i32.add
    i32.const 10
    i32.le_u
    br_if $__inlined_func$~lib/util/string/isSpace
    drop
    block $break|0
     block $case6|0
      local.get $1
      i32.const 5760
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 8232
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 8233
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 8239
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 8287
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 12288
      i32.eq
      br_if $case6|0
      local.get $1
      i32.const 65279
      i32.eq
      br_if $case6|0
      br $break|0
     end
     i32.const 1
     br $__inlined_func$~lib/util/string/isSpace
    end
    i32.const 0
   end
   if
    local.get $0
    i32.const 2
    i32.add
    local.tee $0
    i32.load16_u
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  f64.const 1
  local.set $3
  i32.const 1
  local.get $1
  i32.const 43
  i32.eq
  local.get $1
  i32.const 45
  i32.eq
  select
  if
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.eqz
   if
    f64.const nan:0x8000000000000
    return
   end
   f64.const -1
   f64.const 1
   local.get $1
   i32.const 45
   i32.eq
   select
   local.set $3
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   i32.load16_u
   local.set $1
  end
  local.get $2
  i32.const 2
  i32.gt_s
  i32.const 0
  local.get $1
  i32.const 48
  i32.eq
  select
  if
   block $break|1
    block $case2|1
     block $case1|1
      local.get $0
      i32.load16_u offset=2
      i32.const 32
      i32.or
      local.tee $1
      i32.const 98
      i32.ne
      if
       local.get $1
       i32.const 111
       i32.eq
       br_if $case1|1
       local.get $1
       i32.const 120
       i32.eq
       br_if $case2|1
       br $break|1
      end
      local.get $0
      i32.const 4
      i32.add
      local.set $0
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      i32.const 2
      local.set $5
      br $break|1
     end
     local.get $0
     i32.const 4
     i32.add
     local.set $0
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     i32.const 8
     local.set $5
     br $break|1
    end
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    i32.const 16
    local.set $5
   end
  end
  local.get $5
  i32.const 10
  local.get $5
  select
  local.set $5
  loop $while-continue|2
   block $while-break|2
    local.get $2
    local.tee $1
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    if
     local.get $5
     local.get $0
     i32.load16_u
     local.tee $1
     i32.const 48
     i32.sub
     i32.const 10
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 48
      i32.sub
     else
      local.get $1
      i32.const 65
      i32.sub
      i32.const 25
      i32.le_u
      if (result i32)
       local.get $1
       i32.const 55
       i32.sub
      else
       local.get $1
       i32.const 87
       i32.sub
       local.get $1
       local.get $1
       i32.const 97
       i32.sub
       i32.const 25
       i32.le_u
       select
      end
     end
     local.tee $1
     i32.le_u
     if
      local.get $4
      i64.reinterpret_f64
      i64.const 1
      i64.shl
      i64.const 2
      i64.sub
      i64.const -9007199254740994
      i64.gt_u
      if
       f64.const nan:0x8000000000000
       return
      end
      br $while-break|2
     end
     local.get $4
     local.get $5
     f64.convert_i32_s
     f64.mul
     local.get $1
     f64.convert_i32_u
     f64.add
     local.set $4
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     br $while-continue|2
    end
   end
  end
  local.get $3
  local.get $4
  f64.mul
 )
 (func $assembly/index/ft_on_transfer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  global.get $assembly/index/tokens
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.predecessor_account_id
  call $~lib/near-sdk-core/util/util.read_register_string
  local.set $4
  i32.load
  local.get $4
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#contains
  i32.eqz
  if
   i64.const 0
   call $~lib/near-sdk-core/env/env/env.predecessor_account_id
   call $~lib/near-sdk-core/util/util.read_register_string
   i32.const 6320
   call $~lib/string/String#concat
   i32.const 6432
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $assembly/index/_is_whitelisted
  block $__inlined_func$~lib/rt/__instanceof (result i32)
   local.get $2
   call $~lib/assemblyscript-json/util/index/Buffer.fromString
   local.set $0
   global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
   local.get $0
   call $~lib/assemblyscript-json/decoder/JSONDecoder<~lib/assemblyscript-json/JSON/Handler>#deserialize
   global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
   i32.load
   local.tee $0
   i32.load
   local.get $0
   i32.load
   i32.load offset=12
   i32.const 1
   i32.sub
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
   local.set $0
   global.get $~lib/assemblyscript-json/JSON/_JSON.decoder
   i32.load
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.load
    i32.load offset=12
    i32.const 0
    i32.gt_s
    if
     local.get $1
     i32.load
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#pop
     br $while-continue|0
    end
   end
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $1
   i32.const 12000
   i32.load
   i32.le_u
   if
    loop $do-continue|0
     i32.const 1
     local.get $1
     i32.const 12
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof
     drop
     local.get $1
     i32.const 3
     i32.shl
     i32.const 12004
     i32.add
     i32.load offset=4
     local.tee $1
     br_if $do-continue|0
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2432
   i32.const 6432
   i32.const 76
   i32.const 38
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9152
  call $~lib/assemblyscript-json/JSON/Obj#getString
  local.tee $1
  if
   local.get $1
   i32.load
   i32.const 9200
   call $~lib/string/String.__eq
   if
    block $__inlined_func$~lib/assemblyscript-json/JSON/Obj#getObj (result i32)
     local.get $0
     i32.const 5376
     call $~lib/assemblyscript-json/JSON/Obj#get
     local.tee $1
     if (result i32)
      local.get $1
      if (result i32)
       block $__inlined_func$~lib/rt/__instanceof0 (result i32)
        local.get $1
        i32.const 20
        i32.sub
        i32.load offset=12
        local.tee $2
        i32.const 12000
        i32.load
        i32.le_u
        if
         loop $do-continue|01
          i32.const 1
          local.get $2
          i32.const 12
          i32.eq
          br_if $__inlined_func$~lib/rt/__instanceof0
          drop
          local.get $2
          i32.const 3
          i32.shl
          i32.const 12004
          i32.add
          i32.load offset=4
          local.tee $2
          br_if $do-continue|01
         end
        end
        i32.const 0
       end
      else
       i32.const 0
      end
     else
      i32.const 0
     end
     if
      block $__inlined_func$~lib/rt/__instanceof02 (result i32)
       local.get $1
       i32.const 20
       i32.sub
       i32.load offset=12
       local.tee $2
       i32.const 12000
       i32.load
       i32.le_u
       if
        loop $do-continue|013
         i32.const 1
         local.get $2
         i32.const 12
         i32.eq
         br_if $__inlined_func$~lib/rt/__instanceof02
         drop
         local.get $2
         i32.const 3
         i32.shl
         i32.const 12004
         i32.add
         i32.load offset=4
         local.tee $2
         br_if $do-continue|013
        end
       end
       i32.const 0
      end
      i32.eqz
      if
       i32.const 2432
       i32.const 2496
       i32.const 409
       i32.const 21
       call $~lib/builtins/abort
       unreachable
      end
      local.get $1
      br $__inlined_func$~lib/assemblyscript-json/JSON/Obj#getObj
     end
     i32.const 0
    end
    local.tee $0
    i32.eqz
    if
     i32.const 9248
     i32.const 6432
     i32.const 82
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 0
    i32.const 31
    i32.const 9344
    call $~lib/rt/__newArray
    local.set $4
    local.get $0
    i32.eqz
    if
     i32.const 1920
     i32.const 6432
     i32.const 84
     i32.const 38
     call $~lib/builtins/abort
     unreachable
    end
    block $__inlined_func$~lib/assemblyscript-json/JSON/Obj#getArr (result i32)
     local.get $0
     i32.const 4304
     call $~lib/assemblyscript-json/JSON/Obj#get
     local.tee $1
     if (result i32)
      local.get $1
      if (result i32)
       block $__inlined_func$~lib/rt/__instanceof4 (result i32)
        local.get $1
        i32.const 20
        i32.sub
        i32.load offset=12
        local.tee $2
        i32.const 12000
        i32.load
        i32.le_u
        if
         loop $do-continue|05
          i32.const 1
          local.get $2
          i32.const 21
          i32.eq
          br_if $__inlined_func$~lib/rt/__instanceof4
          drop
          local.get $2
          i32.const 3
          i32.shl
          i32.const 12004
          i32.add
          i32.load offset=4
          local.tee $2
          br_if $do-continue|05
         end
        end
        i32.const 0
       end
      else
       i32.const 0
      end
     else
      i32.const 0
     end
     if
      block $__inlined_func$~lib/rt/__instanceof06 (result i32)
       local.get $1
       i32.const 20
       i32.sub
       i32.load offset=12
       local.tee $2
       i32.const 12000
       i32.load
       i32.le_u
       if
        loop $do-continue|017
         i32.const 1
         local.get $2
         i32.const 21
         i32.eq
         br_if $__inlined_func$~lib/rt/__instanceof06
         drop
         local.get $2
         i32.const 3
         i32.shl
         i32.const 12004
         i32.add
         i32.load offset=4
         local.tee $2
         br_if $do-continue|017
        end
       end
       i32.const 0
      end
      i32.eqz
      if
       i32.const 2432
       i32.const 2496
       i32.const 401
       i32.const 21
       call $~lib/builtins/abort
       unreachable
      end
      local.get $1
      br $__inlined_func$~lib/assemblyscript-json/JSON/Obj#getArr
     end
     i32.const 0
    end
    local.tee $0
    if
     local.get $0
     i32.load
     local.set $8
     loop $for-loop|0
      local.get $3
      local.get $8
      i32.load offset=12
      i32.lt_s
      if
       local.get $4
       local.get $3
       i32.const 0
       i32.const 30
       i32.const 9376
       call $~lib/rt/__newArray
       call $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#__set
       block $__inlined_func$~lib/rt/__instanceof2 (result i32)
        local.get $8
        local.get $3
        call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
        local.tee $2
        i32.const 20
        i32.sub
        i32.load offset=12
        local.tee $1
        i32.const 12000
        i32.load
        i32.le_u
        if
         loop $do-continue|03
          i32.const 1
          local.get $1
          i32.const 21
          i32.eq
          br_if $__inlined_func$~lib/rt/__instanceof2
          drop
          local.get $1
          i32.const 3
          i32.shl
          i32.const 12004
          i32.add
          i32.load offset=4
          local.tee $1
          br_if $do-continue|03
         end
        end
        i32.const 0
       end
       i32.eqz
       if
        i32.const 2432
        i32.const 6432
        i32.const 90
        i32.const 63
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       i32.load
       local.set $9
       i32.const 0
       local.set $2
       loop $for-loop|1
        local.get $2
        local.get $9
        i32.load offset=12
        i32.lt_s
        if
         block $__inlined_func$~lib/rt/__instanceof6 (result i32)
          local.get $9
          local.get $2
          call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
          local.tee $0
          i32.const 20
          i32.sub
          i32.load offset=12
          local.tee $1
          i32.const 12000
          i32.load
          i32.le_u
          if
           loop $do-continue|07
            i32.const 1
            local.get $1
            i32.const 12
            i32.eq
            br_if $__inlined_func$~lib/rt/__instanceof6
            drop
            local.get $1
            i32.const 3
            i32.shl
            i32.const 12004
            i32.add
            i32.load offset=4
            local.tee $1
            br_if $do-continue|07
           end
          end
          i32.const 0
         end
         i32.eqz
         if
          i32.const 2432
          i32.const 6432
          i32.const 92
          i32.const 100
          call $~lib/builtins/abort
          unreachable
         end
         local.get $0
         i32.const 5200
         call $~lib/assemblyscript-json/JSON/Obj#getString
         local.set $1
         local.get $0
         i32.const 5344
         call $~lib/assemblyscript-json/JSON/Obj#getString
         local.set $5
         local.get $0
         i32.const 5376
         call $~lib/assemblyscript-json/JSON/Obj#getString
         local.set $6
         local.get $0
         i32.const 5408
         call $~lib/assemblyscript-json/JSON/Obj#getString
         local.set $7
         block $__inlined_func$assembly/utils/ContractCallUtils#fromJsonObj
          local.get $0
          i32.const 5632
          call $~lib/assemblyscript-json/JSON/Obj#getString
          local.tee $0
          i32.const 0
          local.get $7
          i32.const 0
          local.get $6
          i32.const 0
          local.get $5
          i32.const 0
          local.get $1
          select
          select
          select
          select
          if
           local.get $1
           i32.load
           local.set $1
           local.get $5
           i32.load
           local.set $5
           local.get $6
           i32.load
           local.set $6
           local.get $7
           i32.load
           call $~lib/util/string/strtol<f64>
           i64.trunc_f64_u
           local.set $10
           local.get $0
           i32.load
           call $~lib/as-bignum/utils/atou128
           local.set $7
           i32.const 28
           i32.const 29
           call $~lib/rt/stub/__new
           local.tee $0
           i32.const 0
           i32.store
           local.get $0
           i32.const 0
           i32.store offset=4
           local.get $0
           i32.const 0
           i32.store offset=8
           local.get $0
           i64.const 0
           i64.store offset=16
           local.get $0
           i32.const 0
           i32.store offset=24
           local.get $0
           local.get $1
           i32.store
           local.get $0
           local.get $5
           i32.store offset=4
           local.get $0
           local.get $6
           i32.store offset=8
           local.get $0
           local.get $10
           i64.store offset=16
           local.get $0
           local.get $7
           i32.store offset=24
           br $__inlined_func$assembly/utils/ContractCallUtils#fromJsonObj
          end
          i32.const 0
          local.set $0
         end
         local.get $0
         i32.eqz
         if
          i32.const 9540
          local.get $2
          call $~lib/util/number/itoa32
          i32.store
          i32.const 9548
          local.get $3
          call $~lib/util/number/itoa32
          i32.store
          i32.const 9536
          i32.const 9532
          i32.load
          i32.const 2
          i32.shr_u
          call $~lib/util/string/joinStringArray
          i32.const 6432
          i32.const 93
          i32.const 13
          call $~lib/builtins/abort
          unreachable
         end
         local.get $0
         i32.eqz
         if
          i32.const 1920
          i32.const 6432
          i32.const 94
          i32.const 46
          call $~lib/builtins/abort
          unreachable
         end
         local.get $4
         local.get $3
         call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
         local.get $0
         call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $for-loop|1
        end
       end
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|0
      end
     end
    end
    local.get $4
    call $assembly/index/_internal_multicall
   end
  end
  i32.const 16
  i32.const 8
  call $~lib/rt/stub/__new
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#constructor
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $3
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $1
  local.get $1
  local.get $3
  i32.gt_s
  select
  local.tee $3
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $1
  local.get $1
  local.get $2
  i32.gt_s
  select
  local.tee $2
  local.get $2
  local.get $3
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $4
  local.get $3
  local.get $2
  local.get $2
  local.get $3
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.tee $2
  i32.sub
  local.tee $3
  i32.eqz
  if
   i32.const 1088
   return
  end
  i32.const 0
  local.get $4
  local.get $1
  i32.const 1
  i32.shl
  i32.eq
  local.get $2
  select
  if
   local.get $0
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $0
  local.get $2
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $1
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=4
  i32.const 2704
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  local.get $1
  i32.const 20
  i32.sub
  local.set $6
  loop $for-loop|0
   local.get $4
   local.get $6
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.lt_s
   if
    block $__inlined_func$~lib/string/String#charCodeAt (result i32)
     i32.const -1
     local.get $4
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.ge_u
     br_if $__inlined_func$~lib/string/String#charCodeAt
     drop
     local.get $1
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
    end
    local.tee $3
    i32.const 32
    i32.lt_s
    local.tee $2
    i32.eqz
    if
     block $__inlined_func$~lib/string/String#charCodeAt1 (result i32)
      i32.const -1
      i32.const 2700
      i32.load
      i32.const 1
      i32.shr_u
      i32.eqz
      br_if $__inlined_func$~lib/string/String#charCodeAt1
      drop
      i32.const 2704
      i32.load16_u
     end
     local.get $3
     i32.eq
     local.set $2
    end
    local.get $2
    if (result i32)
     local.get $2
    else
     block $__inlined_func$~lib/string/String#charCodeAt3 (result i32)
      i32.const -1
      i32.const 2940
      i32.load
      i32.const 1
      i32.shr_u
      i32.eqz
      br_if $__inlined_func$~lib/string/String#charCodeAt3
      drop
      i32.const 2944
      i32.load16_u
     end
     local.get $3
     i32.eq
    end
    if
     local.get $1
     local.get $5
     local.get $4
     call $~lib/string/String#substring
     local.set $2
     local.get $0
     i32.load offset=4
     local.get $2
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     local.get $4
     i32.const 1
     i32.add
     local.set $5
     block $__inlined_func$~lib/string/String#charCodeAt5 (result i32)
      i32.const -1
      i32.const 2700
      i32.load
      i32.const 1
      i32.shr_u
      i32.eqz
      br_if $__inlined_func$~lib/string/String#charCodeAt5
      drop
      i32.const 2704
      i32.load16_u
     end
     local.get $3
     i32.eq
     if
      local.get $0
      i32.load offset=4
      i32.const 8976
      call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
     else
      block $__inlined_func$~lib/string/String#charCodeAt7 (result i32)
       i32.const -1
       i32.const 2940
       i32.load
       i32.const 1
       i32.shr_u
       i32.eqz
       br_if $__inlined_func$~lib/string/String#charCodeAt7
       drop
       i32.const 2944
       i32.load16_u
      end
      local.get $3
      i32.eq
      if
       local.get $0
       i32.load offset=4
       i32.const 9008
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
      else
       block $__inlined_func$~lib/string/String#charCodeAt9 (result i32)
        i32.const -1
        i32.const 3004
        i32.load
        i32.const 1
        i32.shr_u
        i32.eqz
        br_if $__inlined_func$~lib/string/String#charCodeAt9
        drop
        i32.const 3008
        i32.load16_u
       end
       local.get $3
       i32.eq
       if
        local.get $0
        i32.load offset=4
        i32.const 9680
        call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
       else
        block $__inlined_func$~lib/string/String#charCodeAt11 (result i32)
         i32.const -1
         i32.const 3068
         i32.load
         i32.const 1
         i32.shr_u
         i32.eqz
         br_if $__inlined_func$~lib/string/String#charCodeAt11
         drop
         i32.const 3072
         i32.load16_u
        end
        local.get $3
        i32.eq
        if
         local.get $0
         i32.load offset=4
         i32.const 9712
         call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
        else
         block $__inlined_func$~lib/string/String#charCodeAt13 (result i32)
          i32.const -1
          i32.const 3132
          i32.load
          i32.const 1
          i32.shr_u
          i32.eqz
          br_if $__inlined_func$~lib/string/String#charCodeAt13
          drop
          i32.const 3136
          i32.load16_u
         end
         local.get $3
         i32.eq
         if
          local.get $0
          i32.load offset=4
          i32.const 9744
          call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
         else
          block $__inlined_func$~lib/string/String#charCodeAt15 (result i32)
           i32.const -1
           i32.const 3196
           i32.load
           i32.const 1
           i32.shr_u
           i32.eqz
           br_if $__inlined_func$~lib/string/String#charCodeAt15
           drop
           i32.const 3200
           i32.load16_u
          end
          local.get $3
          i32.eq
          if
           local.get $0
           i32.load offset=4
           i32.const 9776
           call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
          else
           i32.const 9808
           local.get $3
           call $~lib/util/number/itoa32
           call $~lib/string/String#concat
           i32.const 9584
           i32.const 112
           i32.const 11
           call $~lib/builtins/abort
           unreachable
          end
         end
        end
       end
      end
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  call $~lib/string/String#substring
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  local.get $0
  i32.load offset=4
  i32.const 2704
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
 )
 (func $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 1
  i32.sub
  local.tee $2
  local.get $0
  i32.load
  local.tee $3
  i32.load offset=12
  i32.ge_u
  if
   i32.const 2080
   i32.const 1872
   i32.const 99
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  if
   local.get $0
   i32.load
   i32.load offset=12
   i32.const 1
   i32.sub
   local.tee $2
   local.get $0
   i32.load
   local.tee $3
   i32.load offset=12
   i32.ge_u
   if
    local.get $2
    i32.const 0
    i32.lt_s
    if
     i32.const 2080
     i32.const 1872
     i32.const 115
     i32.const 22
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    local.get $2
    i32.const 1
    i32.add
    local.tee $4
    i32.const 1
    call $~lib/array/ensureCapacity
    local.get $3
    local.get $4
    i32.store offset=12
   end
   local.get $3
   i32.load offset=4
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   i32.const 0
   i32.store
  else
   local.get $0
   i32.load offset=4
   i32.const 2624
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  end
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  if (result i32)
   i32.const 0
  else
   local.get $1
   i32.eqz
   if
    i32.const 1920
    i32.const 9584
    i32.const 81
    i32.const 33
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
  end
  if
   local.get $1
   i32.eqz
   if
    i32.const 1920
    i32.const 9584
    i32.const 82
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
   local.get $0
   i32.load offset=4
   i32.const 3408
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  end
 )
 (func $~lib/typedarray/Int8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2080
   i32.const 2144
   i32.const 24
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_s
 )
 (func $~lib/typedarray/Int8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 2080
   i32.const 2144
   i32.const 35
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/as-bignum/utils/processU64 (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $3
  i32.const 63
  local.set $4
  loop $for-loop|0
   local.get $4
   i32.const -1
   i32.ne
   if
    i32.const 0
    local.set $2
    loop $for-loop|1
     local.get $2
     local.get $3
     i32.le_s
     if
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 5
      i32.ge_s
      i32.const 3
      i32.mul
      i32.add
      i32.const 24
      i32.shl
      i32.const 24
      i32.shr_s
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|1
     end
    end
    local.get $3
    local.set $2
    loop $for-loop|2
     local.get $2
     i32.const -1
     i32.ne
     if
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 25
      i32.shl
      i32.const 24
      i32.shr_s
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      local.get $3
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.add
       local.tee $5
       local.get $0
       local.get $5
       call $~lib/typedarray/Int8Array#__get
       local.get $0
       local.get $2
       call $~lib/typedarray/Int8Array#__get
       i32.const 15
       i32.gt_s
       i32.or
       i32.const 24
       i32.shl
       i32.const 24
       i32.shr_s
       call $~lib/typedarray/Int8Array#__set
      end
      local.get $0
      local.get $2
      local.get $0
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      i32.const 15
      i32.and
      call $~lib/typedarray/Int8Array#__set
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $for-loop|2
     end
    end
    local.get $0
    i32.const 0
    local.get $0
    i32.const 0
    call $~lib/typedarray/Int8Array#__get
    local.get $1
    i64.const 1
    local.get $4
    i64.extend_i32_s
    i64.shl
    i64.and
    i64.const 0
    i64.ne
    i32.add
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|0
   end
  end
 )
 (func $~lib/as-bignum/integer/u128/u128#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  i64.or
  i64.eqz
  if
   i32.const 6912
   return
  end
  block $__inlined_func$~lib/as-bignum/integer/u128/u128#clone@virtual
   local.get $0
   i32.const 8
   i32.sub
   i32.load
   i32.const 8
   i32.eq
   if
    local.get $0
    i64.load
    local.set $5
    local.get $0
    i64.load offset=8
    local.set $6
    i32.const 16
    i32.const 8
    call $~lib/rt/stub/__new
    local.get $5
    local.get $6
    call $~lib/as-bignum/integer/u128/u128#constructor
    drop
    br $__inlined_func$~lib/as-bignum/integer/u128/u128#clone@virtual
   end
   i32.const 0
   local.get $0
   i64.load
   local.get $0
   i64.load offset=8
   call $~lib/as-bignum/integer/u128/u128#constructor
   drop
  end
  i32.const 12
  i32.const 39
  call $~lib/rt/stub/__new
  i32.const 40
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $3
  local.get $0
  i64.load offset=8
  call $~lib/as-bignum/utils/processU64
  local.get $3
  local.get $0
  i64.load
  call $~lib/as-bignum/utils/processU64
  i32.const 1088
  local.set $0
  i32.const 39
  local.set $2
  loop $for-loop|0
   local.get $2
   i32.const -1
   i32.ne
   if
    i32.const 1
    local.get $4
    local.get $4
    if (result i32)
     i32.const 0
    else
     local.get $3
     local.get $2
     call $~lib/typedarray/Int8Array#__get
     i32.const 0
     i32.gt_s
    end
    select
    local.tee $4
    if
     local.get $0
     block $__inlined_func$~lib/string/String#charAt
      local.get $3
      local.get $2
      call $~lib/typedarray/Int8Array#__get
      local.tee $7
      i32.const 10012
      i32.load
      i32.const 1
      i32.shr_u
      i32.ge_u
      if
       i32.const 1088
       local.set $0
       br $__inlined_func$~lib/string/String#charAt
      end
      i32.const 2
      i32.const 1
      call $~lib/rt/stub/__new
      local.tee $0
      local.get $7
      i32.const 1
      i32.shl
      i32.const 10016
      i32.add
      i32.load16_u
      i32.store16
     end
     local.get $0
     call $~lib/string/String#concat
     local.set $0
    end
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $for-loop|0
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<i32>#push (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.add
  local.tee $2
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.const 1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
 )
 (func $~lib/near-sdk-bindgen/index/JSONEncoder#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 8
  i32.const 37
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 8
   i32.const 38
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  i32.const 16
  i32.const 34
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  i32.const 40
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 40
  call $~lib/memory/memory.fill
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  i32.const 40
  i32.store offset=8
  local.get $1
  i32.const 10
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store
  local.get $0
  call $~lib/array/Array<~lib/string/String>#constructor
  i32.store offset=4
  local.get $0
  i32.load
  call $~lib/array/Array<i32>#push
  local.get $0
 )
 (func $~lib/near-sdk-bindgen/index/encode<~lib/as-bignum/integer/safe/u128/u128,~lib/typedarray/Uint8Array>@varargs (param $0 i32) (result i32)
  (local $1 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   call $~lib/near-sdk-bindgen/index/JSONEncoder#constructor
   local.set $1
  end
  local.get $0
  if
   local.get $0
   call $~lib/as-bignum/integer/u128/u128#toString
   local.set $0
   local.get $1
   i32.const 1088
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $1
   local.get $0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
  else
   local.get $1
   i32.const 1088
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $1
   i32.load offset=4
   i32.const 4128
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  end
  local.get $1
  i32.load offset=4
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinStringArray
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
 )
 (func $assembly/index/__wrapper_ft_on_transfer
  (local $0 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.load
  i32.const 9040
  i32.const 9040
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 9040
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 9040
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String>
  end
  local.get $0
  i32.load
  i32.const 9088
  i32.const 9088
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 9088
   call $~lib/near-sdk-bindgen/index/decode<~lib/as-bignum/integer/safe/u128/u128,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 6112
   i32.const 9088
   call $~lib/string/String#concat
   i32.const 4720
   call $~lib/string/String#concat
   i32.const 5664
   call $~lib/string/String#concat
   i32.const 6160
   call $~lib/string/String#concat
   i32.const 4224
   i32.const 33
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 9120
  i32.const 9120
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 9120
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 9120
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String>
  end
  call $assembly/index/ft_on_transfer
  i32.const 1
  global.set $~argumentsLength
  call $~lib/near-sdk-bindgen/index/encode<~lib/as-bignum/integer/safe/u128/u128,~lib/typedarray/Uint8Array>@varargs
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.value_return
 )
 (func $assembly/index/__wrapper_recover_near
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.load
  i32.const 10080
  i32.const 10080
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 10080
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 10080
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String>
  end
  local.get $0
  i32.load
  i32.const 9088
  i32.const 9088
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 9088
   call $~lib/near-sdk-bindgen/index/decode<~lib/as-bignum/integer/safe/u128/u128,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 16
   i32.const 8
   call $~lib/rt/stub/__new
   i64.const 0
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
  end
  local.set $0
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.predecessor_account_id
  call $~lib/near-sdk-core/util/util.read_register_string
  call $assembly/index/_is_whitelisted
  i32.const 16
  i32.const 8
  call $~lib/rt/stub/__new
  i64.const 0
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#constructor
  local.tee $2
  local.set $3
  local.get $0
  i64.load offset=8
  local.get $2
  i64.load offset=8
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $3
   i64.load
   i64.eq
  else
   i32.const 0
  end
  if
   global.get $assembly/index/storageCosts
   i32.load
   i32.const 0
   call $~lib/near-sdk-core/env/env/env.storage_usage
   i64.const 0
   call $~lib/as-bignum/integer/u128/u128#constructor
   call $~lib/as-bignum/integer/safe/u128/u128.mul
   local.set $0
   call $~lib/near-sdk-core/contract/Context.get:accountBalance
   local.get $0
   call $~lib/as-bignum/integer/safe/u128/u128.sub
   local.set $0
  end
  call $~lib/near-sdk-core/promise/ContractPromiseBatch.create
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__new
  i32.const 16
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $3
  i32.load offset=4
  local.tee $1
  local.get $0
  i64.load
  i64.store
  local.get $1
  local.get $0
  i64.load offset=8
  i64.store offset=8
  i64.load
  local.get $3
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.promise_batch_action_transfer
 )
 (func $assembly/index/__wrapper_get_min_storage_balance
  (local $0 i32)
  global.get $assembly/index/storageCosts
  i32.load
  i32.const 0
  call $~lib/near-sdk-core/env/env/env.storage_usage
  i64.const 0
  call $~lib/as-bignum/integer/u128/u128#constructor
  call $~lib/as-bignum/integer/safe/u128/u128.mul
  i32.const 1
  global.set $~argumentsLength
  call $~lib/near-sdk-bindgen/index/encode<~lib/as-bignum/integer/safe/u128/u128,~lib/typedarray/Uint8Array>@varargs
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.value_return
 )
 (func $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|0
      i32.const 1
      local.get $2
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|01
      i32.const 1
      local.get $2
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|01
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    local.get $0
    return
   end
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof3 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|04
      i32.const 1
      local.get $2
      i32.const 28
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof3
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|04
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof1 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|02
      i32.const 1
      local.get $2
      i32.const 21
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof1
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|02
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String#concat
   i32.const 4896
   call $~lib/string/String#concat
   i32.const 4224
   i32.const 226
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $1
  block $__inlined_func$~lib/rt/__instanceof13 (result i32)
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $2
   i32.const 12000
   i32.load
   i32.le_u
   if
    loop $do-continue|024
     i32.const 1
     local.get $2
     i32.const 21
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof13
     drop
     local.get $2
     i32.const 3
     i32.shl
     i32.const 12004
     i32.add
     i32.load offset=4
     local.tee $2
     br_if $do-continue|024
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 231
   i32.const 26
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.set $0
  loop $for-loop|0
   local.get $3
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    i32.const 1088
    call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $1
 )
 (func $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>> (param $0 i32) (result i32)
  i32.const 6112
  local.get $0
  call $~lib/string/String#concat
  i32.const 4720
  call $~lib/string/String#concat
  i32.const 10176
  call $~lib/string/String#concat
  i32.const 6160
  call $~lib/string/String#concat
  i32.const 4224
  i32.const 33
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/near-sdk-core/storage/Storage._internalReadBytes (param $0 i32) (result i32)
  local.get $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.storage_read
  i64.const 1
  i64.eq
  if (result i32)
   call $~lib/near-sdk-core/util/util.read_register
  else
   i32.const 0
  end
 )
 (func $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#getSome (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/string/String#concat
  local.tee $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.storage_has_key
  i64.eqz
  if
   i32.const 10256
   local.get $0
   call $~lib/string/String#concat
   i32.const 10288
   call $~lib/string/String#concat
   i32.const 10384
   i32.const 237
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/near-sdk-core/storage/Storage._internalReadBytes
  call $~lib/near-sdk-core/util/util.bytesToString
  local.tee $0
  i32.eqz
  if
   i32.const 1920
   i32.const 10384
   i32.const 240
   i32.const 38
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/util/string/strtol<i64>
  i32.wrap_i64
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.lt_s
  if
   local.get $0
   local.get $0
   i32.load offset=4
   call $~lib/near-sdk-core/storage/Storage._internalReadBytes
   call $~lib/near-sdk-core/util/util.bytesToString
   local.tee $1
   i32.const 0
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 0
   else
    local.get $1
    i32.eqz
    if
     i32.const 1920
     i32.const 10384
     i32.const 218
     i32.const 41
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    call $~lib/util/string/strtol<i64>
    i32.wrap_i64
   end
   i32.store offset=8
  end
  local.get $0
  i32.load offset=8
 )
 (func $~lib/near-sdk-bindgen/index/encode<~lib/string/String,~lib/near-sdk-bindgen/index/JSONEncoder> (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  if
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $2
   local.get $0
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeString
  else
   local.get $2
   local.get $1
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $2
   i32.load offset=4
   i32.const 4128
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  end
 )
 (func $~lib/array/Array<i32>#pop (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 1
  i32.lt_s
  if
   i32.const 3568
   i32.const 1872
   i32.const 276
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/util/number/itoa32
  call $~lib/string/String#concat
  i32.const 1
  global.set $~argumentsLength
  call $~lib/near-sdk-bindgen/index/JSONEncoder#constructor
  local.set $1
  local.get $2
  if
   local.get $1
   if (result i32)
    local.get $1
   else
    call $~lib/near-sdk-bindgen/index/JSONEncoder#constructor
   end
   local.tee $0
   i32.const 1088
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $0
   i32.load offset=4
   i32.const 2272
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   local.get $0
   i32.load
   call $~lib/array/Array<i32>#push
   local.get $2
   i32.load
   i32.const 10592
   local.get $0
   call $~lib/near-sdk-bindgen/index/encode<~lib/string/String,~lib/near-sdk-bindgen/index/JSONEncoder>
   local.get $2
   i32.load8_u offset=4
   local.set $2
   local.get $0
   i32.const 10624
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $0
   i32.load offset=4
   i32.const 3872
   i32.const 3760
   local.get $2
   select
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   local.get $0
   i32.load offset=4
   i32.const 2592
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   local.get $0
   i32.load
   call $~lib/array/Array<i32>#pop
  else
   local.get $1
   i32.const 1088
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $1
   i32.load offset=4
   i32.const 4128
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  end
  local.get $1
  i32.load offset=4
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinStringArray
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
  local.set $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  local.get $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.storage_write
  drop
 )
 (func $~lib/near-sdk-core/storage/Storage.setString (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $0
  local.get $1
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.set $1
  local.get $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  local.get $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.storage_write
  drop
 )
 (func $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#set (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 5
  i32.const 5
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $1
  i32.store
  local.get $2
  i32.const 1
  i32.store8 offset=4
  local.get $0
  i32.load
  local.get $1
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#contains
  if
   local.get $0
   i32.load
   local.get $1
   call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#getSome
   local.set $1
   local.get $0
   i32.load offset=4
   local.set $0
   local.get $1
   i32.const 0
   i32.ge_s
   if (result i32)
    local.get $0
    call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
    local.get $1
    i32.gt_s
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2080
    i32.const 10464
    i32.const 49
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   local.get $2
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_set
  else
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   local.set $4
   i32.load
   local.get $1
   call $~lib/string/String#concat
   local.get $4
   call $~lib/util/number/itoa32
   call $~lib/near-sdk-core/storage/Storage.setString
   local.get $0
   i32.load offset=4
   local.tee $0
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   local.tee $3
   i32.const 1
   i32.add
   local.set $1
   local.get $0
   local.get $1
   i32.store offset=8
   local.get $0
   i32.load offset=4
   local.get $1
   call $~lib/util/number/itoa32
   call $~lib/near-sdk-core/storage/Storage.setString
   local.get $0
   local.get $3
   local.get $2
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_set
  end
 )
 (func $assembly/index/__wrapper_admins_add
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.load
  i32.const 10128
  i32.const 10128
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 10128
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 10128
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.set $0
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.predecessor_account_id
  call $~lib/near-sdk-core/util/util.read_register_string
  call $assembly/index/_is_whitelisted
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    global.get $assembly/index/admins
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $~lib/near-sdk-bindgen/index/decode<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>,~lib/typedarray/Uint8Array> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   local.get $0
   call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
   local.tee $0
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof (result i32)
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 12000
     i32.load
     i32.le_u
     if
      loop $do-continue|0
       i32.const 1
       local.get $1
       i32.const 12
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 12004
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-continue|0
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   if (result i32)
    i32.const 1088
    i32.const 1088
    call $~lib/string/String.__eq
    i32.eqz
   else
    i32.const 0
   end
   if
    block $__inlined_func$~lib/rt/__instanceof0 (result i32)
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 12000
     i32.load
     i32.le_u
     if
      loop $do-continue|01
       i32.const 1
       local.get $1
       i32.const 12
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof0
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 12004
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-continue|01
      end
     end
     i32.const 0
    end
    i32.eqz
    br_if $folding-inner0
    local.get $0
    i32.const 1088
    call $~lib/assemblyscript-json/JSON/Obj#get
    local.tee $0
    i32.eqz
    if
     local.get $0
     return
    end
   end
   local.get $0
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof3 (result i32)
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 12000
     i32.load
     i32.le_u
     if
      loop $do-continue|04
       i32.const 1
       local.get $1
       i32.const 28
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof3
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 12004
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-continue|04
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   if
    i32.const 0
    return
   end
   local.get $0
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof10 (result i32)
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $1
     i32.const 12000
     i32.load
     i32.le_u
     if
      loop $do-continue|011
       i32.const 1
       local.get $1
       i32.const 12
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof10
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 12004
       i32.add
       i32.load offset=4
       local.tee $1
       br_if $do-continue|011
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   if (result i32)
    i32.const 1
   else
    local.get $0
    if (result i32)
     block $__inlined_func$~lib/rt/__instanceof12 (result i32)
      local.get $0
      i32.const 20
      i32.sub
      i32.load offset=12
      local.tee $1
      i32.const 12000
      i32.load
      i32.le_u
      if
       loop $do-continue|013
        i32.const 1
        local.get $1
        i32.const 12
        i32.eq
        br_if $__inlined_func$~lib/rt/__instanceof12
        drop
        local.get $1
        i32.const 3
        i32.shl
        i32.const 12004
        i32.add
        i32.load offset=4
        local.tee $1
        br_if $do-continue|013
       end
      end
      i32.const 0
     end
    else
     i32.const 0
    end
   end
   i32.eqz
   if
    i32.const 4832
    i32.const 1088
    call $~lib/string/String#concat
    i32.const 4720
    call $~lib/string/String#concat
    i32.const 10720
    call $~lib/string/String#concat
    i32.const 5120
    call $~lib/string/String#concat
    i32.const 3872
    i32.const 3760
    local.get $0
    if (result i32)
     block $__inlined_func$~lib/rt/__instanceof18 (result i32)
      local.get $0
      i32.const 20
      i32.sub
      i32.load offset=12
      local.tee $1
      i32.const 12000
      i32.load
      i32.le_u
      if
       loop $do-continue|019
        i32.const 1
        local.get $1
        i32.const 12
        i32.eq
        br_if $__inlined_func$~lib/rt/__instanceof18
        drop
        local.get $1
        i32.const 3
        i32.shl
        i32.const 12004
        i32.add
        i32.load offset=4
        local.tee $1
        br_if $do-continue|019
       end
      end
      i32.const 0
     end
    else
     i32.const 0
    end
    select
    call $~lib/string/String#concat
    i32.const 4224
    i32.const 401
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 5
   call $~lib/rt/stub/__new
   local.set $2
   block $__inlined_func$~lib/rt/__instanceof21 (result i32)
    local.get $0
    local.tee $1
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $0
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|022
      i32.const 1
      local.get $0
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof21
      drop
      local.get $0
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $0
      br_if $do-continue|022
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 418
    i32.const 47
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.tee $0
   local.get $1
   i32.load
   i32.const 10592
   i32.const 10592
   call $~lib/util/hash/HASH<~lib/string/String>
   call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
   if (result i32)
    local.get $1
    i32.const 10592
    call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
   else
    i32.const 0
   end
   i32.store
   local.get $0
   local.get $1
   i32.load
   i32.const 10624
   i32.const 10624
   call $~lib/util/hash/HASH<~lib/string/String>
   call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
   if (result i32)
    local.get $1
    if (result i32)
     block $__inlined_func$~lib/rt/__instanceof1 (result i32)
      local.get $1
      i32.const 20
      i32.sub
      i32.load offset=12
      local.tee $0
      i32.const 12000
      i32.load
      i32.le_u
      if
       loop $do-continue|02
        i32.const 1
        local.get $0
        i32.const 12
        i32.eq
        br_if $__inlined_func$~lib/rt/__instanceof1
        drop
        local.get $0
        i32.const 3
        i32.shl
        i32.const 12004
        i32.add
        i32.load offset=4
        local.tee $0
        br_if $do-continue|02
       end
      end
      i32.const 0
     end
    else
     i32.const 0
    end
    if (result i32)
     i32.const 10624
     i32.const 1088
     call $~lib/string/String.__eq
     i32.eqz
    else
     i32.const 0
    end
    if
     block $__inlined_func$~lib/rt/__instanceof03 (result i32)
      local.get $1
      i32.const 20
      i32.sub
      i32.load offset=12
      local.tee $0
      i32.const 12000
      i32.load
      i32.le_u
      if
       loop $do-continue|014
        i32.const 1
        local.get $0
        i32.const 12
        i32.eq
        br_if $__inlined_func$~lib/rt/__instanceof03
        drop
        local.get $0
        i32.const 3
        i32.shl
        i32.const 12004
        i32.add
        i32.load offset=4
        local.tee $0
        br_if $do-continue|014
       end
      end
      i32.const 0
     end
     i32.eqz
     br_if $folding-inner0
     local.get $1
     i32.const 10624
     call $~lib/assemblyscript-json/JSON/Obj#get
     local.tee $1
     i32.eqz
     if
      i32.const 4464
      i32.const 10816
      call $~lib/string/String#concat
      i32.const 4624
      call $~lib/string/String#concat
      i32.const 4224
      i32.const 323
      i32.const 9
      call $~lib/builtins/abort
      unreachable
     end
    end
    local.get $1
    if (result i32)
     block $__inlined_func$~lib/rt/__instanceof5 (result i32)
      local.get $1
      i32.const 20
      i32.sub
      i32.load offset=12
      local.tee $0
      i32.const 12000
      i32.load
      i32.le_u
      if
       loop $do-continue|06
        i32.const 1
        local.get $0
        i32.const 24
        i32.eq
        br_if $__inlined_func$~lib/rt/__instanceof5
        drop
        local.get $0
        i32.const 3
        i32.shl
        i32.const 12004
        i32.add
        i32.load offset=4
        local.tee $0
        br_if $do-continue|06
       end
      end
      i32.const 0
     end
    else
     i32.const 0
    end
    i32.eqz
    if
     i32.const 4832
     i32.const 10624
     call $~lib/string/String#concat
     i32.const 4720
     call $~lib/string/String#concat
     i32.const 10816
     call $~lib/string/String#concat
     i32.const 10848
     call $~lib/string/String#concat
     i32.const 4224
     i32.const 331
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    block $__inlined_func$~lib/rt/__instanceof11 (result i32)
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=12
     local.tee $0
     i32.const 12000
     i32.load
     i32.le_u
     if
      loop $do-continue|012
       i32.const 1
       local.get $0
       i32.const 24
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof11
       drop
       local.get $0
       i32.const 3
       i32.shl
       i32.const 12004
       i32.add
       i32.load offset=4
       local.tee $0
       br_if $do-continue|012
      end
     end
     i32.const 0
    end
    i32.eqz
    if
     i32.const 2432
     i32.const 4224
     i32.const 340
     i32.const 24
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.load8_u
   else
    i32.const 0
   end
   i32.store8 offset=4
   local.get $2
   return
  end
  i32.const 2432
  i32.const 4224
  i32.const 310
  i32.const 37
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/util/number/itoa32
  call $~lib/string/String#concat
  local.tee $0
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.storage_has_key
  i64.eqz
  if
   i32.const 10256
   local.get $0
   call $~lib/string/String#concat
   i32.const 10288
   call $~lib/string/String#concat
   i32.const 10384
   i32.const 237
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/near-sdk-core/storage/Storage._internalReadBytes
  local.tee $0
  i32.eqz
  if
   i32.const 1920
   i32.const 10384
   i32.const 242
   i32.const 37
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/near-sdk-bindgen/index/decode<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>,~lib/typedarray/Uint8Array>
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#pop (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  i32.const 0
  i32.le_s
  if
   i32.const 10656
   i32.const 10464
   i32.const 67
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  i32.const 1
  i32.sub
  local.tee $1
  i32.store offset=8
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/util/number/itoa32
  call $~lib/near-sdk-core/storage/Storage.setString
  local.get $0
  local.get $1
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_get
  local.get $0
  i32.load
  local.get $1
  call $~lib/util/number/itoa32
  call $~lib/string/String#concat
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.storage_remove
  drop
 )
 (func $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $0
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   local.get $1
   i32.gt_s
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2080
   i32.const 10464
   i32.const 40
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_get
 )
 (func $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#delete (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/near-sdk-core/collections/persistentMap/PersistentMap<~lib/string/String,i32>#getSome
  local.tee $3
  local.get $0
  i32.load offset=4
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  i32.const 1
  i32.sub
  i32.eq
  if
   local.get $0
   i32.load offset=4
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#pop
   local.set $1
   local.get $0
   i32.load
   i32.load
   local.get $1
   i32.load
   call $~lib/string/String#concat
   call $~lib/near-sdk-core/util/util.stringToBytes
   local.tee $0
   i32.load offset=8
   i64.extend_i32_s
   local.get $0
   i32.load offset=4
   i64.extend_i32_u
   i64.const 0
   call $~lib/near-sdk-core/env/env/env.storage_remove
   drop
   return
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  local.get $2
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  i32.const 1
  i32.sub
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__get
  i32.load
  local.set $6
  local.get $0
  i32.load offset=4
  local.tee $2
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  local.get $3
  i32.le_s
  if
   i32.const 10912
   i32.const 10464
   i32.const 79
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  local.get $3
  i32.const 1
  i32.add
  i32.eq
  if
   local.get $2
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#pop
   drop
  else
   local.get $2
   local.get $3
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_get
   drop
   local.get $2
   local.get $2
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   i32.const 1
   i32.sub
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_get
   local.set $4
   local.get $2
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   i32.const 1
   i32.sub
   local.set $5
   local.get $2
   i32.load
   local.get $5
   call $~lib/util/number/itoa32
   call $~lib/string/String#concat
   call $~lib/near-sdk-core/util/util.stringToBytes
   local.tee $5
   i32.load offset=8
   i64.extend_i32_s
   local.get $5
   i32.load offset=4
   i64.extend_i32_u
   i64.const 0
   call $~lib/near-sdk-core/env/env/env.storage_remove
   drop
   local.get $2
   local.get $3
   local.get $4
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__unchecked_set
   local.get $2
   local.get $2
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
   i32.const 1
   i32.sub
   local.tee $4
   i32.store offset=8
   local.get $2
   i32.load offset=4
   local.get $4
   call $~lib/util/number/itoa32
   call $~lib/near-sdk-core/storage/Storage.setString
  end
  local.get $0
  i32.load
  i32.load
  local.get $6
  call $~lib/string/String#concat
  local.get $3
  call $~lib/util/number/itoa32
  call $~lib/near-sdk-core/storage/Storage.setString
  local.get $0
  i32.load
  i32.load
  local.get $1
  call $~lib/string/String#concat
  call $~lib/near-sdk-core/util/util.stringToBytes
  local.tee $0
  i32.load offset=8
  i64.extend_i32_s
  local.get $0
  i32.load offset=4
  i64.extend_i32_u
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.storage_remove
  drop
 )
 (func $assembly/index/__wrapper_admins_remove
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.load
  i32.const 10128
  i32.const 10128
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 10128
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 10128
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.set $0
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.predecessor_account_id
  call $~lib/near-sdk-core/util/util.read_register_string
  call $assembly/index/_is_whitelisted
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    global.get $assembly/index/admins
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#delete
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|0
      i32.const 1
      local.get $2
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|0
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 1088
   call $~lib/string/String.__eq
   i32.eqz
  else
   i32.const 0
  end
  if
   block $__inlined_func$~lib/rt/__instanceof0 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|01
      i32.const 1
      local.get $2
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof0
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|01
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 4224
    i32.const 310
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/JSON/Obj#get
   local.tee $0
   i32.eqz
   if
    i32.const 4464
    i32.const 11008
    call $~lib/string/String#concat
    i32.const 4624
    call $~lib/string/String#concat
    i32.const 4224
    i32.const 323
    i32.const 9
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof5 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $2
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|06
      i32.const 1
      local.get $2
      i32.const 27
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof5
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $2
      br_if $do-continue|06
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4832
   local.get $1
   call $~lib/string/String#concat
   i32.const 4720
   call $~lib/string/String#concat
   i32.const 11008
   call $~lib/string/String#concat
   i32.const 11040
   call $~lib/string/String#concat
   i32.const 4224
   i32.const 358
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/rt/__instanceof11 (result i32)
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=12
   local.tee $1
   i32.const 12000
   i32.load
   i32.le_u
   if
    loop $do-continue|012
     i32.const 1
     local.get $1
     i32.const 27
     i32.eq
     br_if $__inlined_func$~lib/rt/__instanceof11
     drop
     local.get $1
     i32.const 3
     i32.shl
     i32.const 12004
     i32.add
     i32.load offset=4
     local.tee $1
     br_if $do-continue|012
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 2432
   i32.const 4224
   i32.const 367
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.load
  i32.wrap_i64
 )
 (func $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#keys (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $3
  local.get $2
  local.get $0
  i32.load offset=4
  call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  local.tee $4
  local.get $2
  local.get $4
  i32.lt_s
  select
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $1
    call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#__get
    i32.load
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/near-sdk-bindgen/index/encode<~lib/array/Array<~lib/string/String>,~lib/typedarray/Uint8Array>@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   call $~lib/near-sdk-bindgen/index/JSONEncoder#constructor
   local.set $1
  end
  local.get $0
  if
   local.get $1
   i32.const 1088
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $1
   i32.load offset=4
   i32.const 3616
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   local.get $1
   i32.load
   call $~lib/array/Array<i32>#push
   loop $for-loop|0
    local.get $2
    local.get $0
    i32.load offset=12
    i32.lt_s
    if
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     i32.const 0
     local.get $1
     call $~lib/near-sdk-bindgen/index/encode<~lib/string/String,~lib/near-sdk-bindgen/index/JSONEncoder>
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   local.get $1
   i32.load offset=4
   i32.const 3648
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
   local.get $1
   i32.load
   call $~lib/array/Array<i32>#pop
  else
   local.get $1
   i32.const 1088
   call $~lib/assemblyscript-json/encoder/JSONEncoder#writeKey
   local.get $1
   i32.load offset=4
   i32.const 4128
   call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#push
  end
  local.get $1
  i32.load offset=4
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinStringArray
  call $~lib/assemblyscript-json/util/index/Buffer.fromString
 )
 (func $assembly/index/__wrapper_get_admins
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.load
  i32.const 10976
  i32.const 10976
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 10976
   call $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  local.set $1
  local.get $0
  i32.load
  i32.const 11104
  i32.const 11104
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 11104
   call $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj>
  else
   global.get $assembly/index/admins
   i32.load offset=4
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  end
  local.set $0
  global.get $assembly/index/admins
  local.get $1
  local.get $0
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#keys
  i32.const 1
  global.set $~argumentsLength
  call $~lib/near-sdk-bindgen/index/encode<~lib/array/Array<~lib/string/String>,~lib/typedarray/Uint8Array>@varargs
  local.tee $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.value_return
 )
 (func $assembly/index/__wrapper_tokens_add
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.load
  i32.const 11136
  i32.const 11136
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 11136
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 11136
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.set $0
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.predecessor_account_id
  call $~lib/near-sdk-core/util/util.read_register_string
  call $assembly/index/_is_whitelisted
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    global.get $assembly/index/tokens
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/__wrapper_tokens_remove
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.load
  i32.const 11136
  i32.const 11136
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 11136
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 11136
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.set $0
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.predecessor_account_id
  call $~lib/near-sdk-core/util/util.read_register_string
  call $assembly/index/_is_whitelisted
  loop $for-loop|0
   local.get $1
   local.get $0
   i32.load offset=12
   i32.lt_s
   if
    global.get $assembly/index/tokens
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#delete
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/__wrapper_get_tokens
  (local $0 i32)
  (local $1 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.load
  i32.const 10976
  i32.const 10976
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 10976
   call $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 0
  end
  local.set $1
  local.get $0
  i32.load
  i32.const 11104
  i32.const 11104
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 11104
   call $~lib/near-sdk-bindgen/index/decode<i32,~lib/assemblyscript-json/JSON/Obj>
  else
   global.get $assembly/index/tokens
   i32.load offset=4
   call $~lib/near-sdk-core/collections/persistentVector/PersistentVector<~lib/near-sdk-core/collections/util/MapEntry<~lib/string/String,bool>>#get:length
  end
  local.set $0
  global.get $assembly/index/tokens
  local.get $1
  local.get $0
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#keys
  i32.const 1
  global.set $~argumentsLength
  call $~lib/near-sdk-bindgen/index/encode<~lib/array/Array<~lib/string/String>,~lib/typedarray/Uint8Array>@varargs
  local.tee $1
  i32.load offset=8
  i64.extend_i32_s
  local.get $1
  i32.load offset=4
  i64.extend_i32_u
  call $~lib/near-sdk-core/env/env/env.value_return
 )
 (func $assembly/index/__wrapper_init
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $3
  i32.load
  i32.const 10128
  i32.const 10128
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $3
   i32.const 10128
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 10128
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.set $3
  i32.const 11184
  call $~lib/near-sdk-core/storage/Storage._internalReadBytes
  call $~lib/near-sdk-core/util/util.bytesToString
  local.tee $1
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   local.get $1
   local.tee $0
   i32.eqz
   if
    i32.const 1920
    i32.const 10384
    i32.const 185
    i32.const 43
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 11216
   i32.const 6432
   i32.const 139
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $assembly/index/admins
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.current_account_id
  call $~lib/near-sdk-core/util/util.read_register_string
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#set
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.load offset=12
   i32.lt_s
   if
    global.get $assembly/index/admins
    local.get $3
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
    call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 11184
  i32.const 11280
  call $~lib/near-sdk-core/storage/Storage.setString
 )
 (func $~lib/near-sdk-bindgen/index/requireParameter<u64> (param $0 i32) (result i64)
  i32.const 6112
  local.get $0
  call $~lib/string/String#concat
  i32.const 4720
  call $~lib/string/String#concat
  i32.const 5440
  call $~lib/string/String#concat
  i32.const 6160
  call $~lib/string/String#concat
  i32.const 4224
  i32.const 33
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/withdraw_from_ref (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  i64.const 0
  call $~lib/near-sdk-core/env/env/env.predecessor_account_id
  call $~lib/near-sdk-core/util/util.read_register_string
  call $assembly/index/_is_whitelisted
  call $~lib/near-sdk-core/env/env/env.promise_results_count
  local.set $10
  i32.const 16
  i32.const 41
  call $~lib/rt/stub/__new
  local.tee $5
  i32.const 0
  i32.store
  local.get $5
  i32.const 0
  i32.store offset=4
  local.get $5
  i32.const 0
  i32.store offset=8
  local.get $5
  i32.const 0
  i32.store offset=12
  local.get $10
  i32.wrap_i64
  local.tee $7
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1760
   i32.const 1872
   i32.const 64
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 8
  local.get $7
  i32.const 8
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.tee $8
  i32.const 0
  call $~lib/rt/stub/__new
  local.tee $11
  local.get $8
  call $~lib/memory/memory.fill
  local.get $5
  local.get $11
  i32.store
  local.get $5
  local.get $11
  i32.store offset=4
  local.get $5
  local.get $8
  i32.store offset=8
  local.get $5
  local.get $7
  i32.store offset=12
  loop $for-loop|0
   local.get $10
   local.get $6
   i64.extend_i32_s
   i64.gt_s
   if
    block $for-continue|0
     local.get $6
     i64.extend_i32_s
     i64.const 0
     call $~lib/near-sdk-core/env/env/env.promise_result
     i32.wrap_i64
     local.tee $8
     i32.const 1
     i32.ne
     if
      i32.const 1
      global.set $~argumentsLength
      i32.const 8
      i32.const 40
      call $~lib/rt/stub/__new
      local.tee $7
      local.get $8
      i32.store
      local.get $7
      i32.const 0
      i32.store offset=4
      br $for-continue|0
     end
     call $~lib/near-sdk-core/util/util.read_register
     local.set $11
     i32.const 8
     i32.const 40
     call $~lib/rt/stub/__new
     local.tee $7
     local.get $8
     i32.store
     local.get $7
     local.get $11
     i32.store offset=4
    end
    local.get $5
    local.get $6
    local.get $7
    call $~lib/array/Array<~lib/array/Array<assembly/model/ContractCall>>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $5
  local.get $5
  i32.load offset=12
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
  local.tee $5
  i32.load
  i32.const 1
  i32.eq
  if
   block $__inlined_func$~lib/rt/__instanceof (result i32)
    local.get $5
    i32.load offset=4
    call $~lib/assemblyscript-json/JSON/_JSON.parse<~lib/typedarray/Uint8Array>
    local.tee $7
    i32.const 20
    i32.sub
    i32.load offset=12
    local.tee $6
    i32.const 12000
    i32.load
    i32.le_u
    if
     loop $do-continue|0
      i32.const 1
      local.get $6
      i32.const 12
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof
      drop
      local.get $6
      i32.const 3
      i32.shl
      i32.const 12004
      i32.add
      i32.load offset=4
      local.tee $6
      br_if $do-continue|0
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 2432
    i32.const 6432
    i32.const 151
    i32.const 37
    call $~lib/builtins/abort
    unreachable
   end
   loop $for-loop|00
    local.get $9
    local.get $1
    i32.load offset=12
    i32.lt_s
    if
     local.get $7
     local.get $1
     local.get $9
     call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
     call $~lib/assemblyscript-json/JSON/Obj#getString
     local.tee $5
     if
      local.get $5
      i32.load
      call $~lib/as-bignum/utils/atou128
      local.set $5
      i32.const 16
      i32.const 8
      call $~lib/rt/stub/__new
      i64.const 0
      i64.const 0
      call $~lib/as-bignum/integer/u128/u128#constructor
      local.tee $6
      local.set $8
      local.get $6
      i64.load offset=8
      local.tee $10
      local.get $5
      i64.load offset=8
      local.tee $12
      i64.eq
      if (result i32)
       local.get $5
       i64.load
       local.get $8
       i64.load
       i64.gt_u
      else
       local.get $10
       local.get $12
       i64.lt_u
      end
      if
       i32.const 11732
       local.get $1
       local.get $9
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       i32.store
       i32.const 11740
       local.get $5
       call $~lib/as-bignum/integer/u128/u128#toString
       i32.store
       local.get $0
       i32.const 11552
       i32.const 11728
       i32.const 11724
       i32.load
       i32.const 2
       i32.shr_u
       call $~lib/util/string/joinStringArray
       call $~lib/assemblyscript-json/util/index/Buffer.fromString
       local.get $3
       i32.const 11776
       call $~lib/as-bignum/utils/atou128
       call $~lib/near-sdk-core/contract/ContractPromise.create<~lib/typedarray/Uint8Array>
       local.get $1
       local.get $9
       call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#__get
       i32.const 11972
       local.get $2
       i32.store
       i32.const 11980
       local.get $5
       call $~lib/as-bignum/integer/u128/u128#toString
       i32.store
       i32.const 11808
       i32.const 11968
       i32.const 11964
       i32.load
       i32.const 2
       i32.shr_u
       call $~lib/util/string/joinStringArray
       call $~lib/assemblyscript-json/util/index/Buffer.fromString
       local.get $4
       i32.const 11776
       call $~lib/as-bignum/utils/atou128
       call $~lib/near-sdk-core/contract/ContractPromise#then<~lib/typedarray/Uint8Array>
       drop
      end
     end
     local.get $9
     i32.const 1
     i32.add
     local.set $9
     br $for-loop|00
    end
   end
  end
 )
 (func $assembly/index/__wrapper_withdraw_from_ref
  (local $0 i32)
  call $~lib/near-sdk-bindgen/index/getInput
  local.tee $0
  i32.load
  i32.const 11312
  i32.const 11312
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 11312
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 11312
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String>
  end
  local.get $0
  i32.load
  i32.const 11360
  i32.const 11360
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 11360
   call $~lib/near-sdk-bindgen/index/decode<~lib/array/Array<~lib/string/String>,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 11360
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/array/Array<~lib/string/String>>
  end
  local.get $0
  i32.load
  i32.const 11392
  i32.const 11392
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i32)
   local.get $0
   i32.const 11392
   call $~lib/near-sdk-bindgen/index/decode<~lib/string/String,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 11392
   call $~lib/near-sdk-bindgen/index/requireParameter<~lib/string/String>
  end
  local.get $0
  i32.load
  i32.const 11440
  i32.const 11440
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i64)
   local.get $0
   i32.const 11440
   call $~lib/near-sdk-bindgen/index/decode<u64,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 11440
   call $~lib/near-sdk-bindgen/index/requireParameter<u64>
  end
  local.get $0
  i32.load
  i32.const 11488
  i32.const 11488
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/JSON/Value>#find
  if (result i64)
   local.get $0
   i32.const 11488
   call $~lib/near-sdk-bindgen/index/decode<u64,~lib/assemblyscript-json/JSON/Obj>
  else
   i32.const 11488
   call $~lib/near-sdk-bindgen/index/requireParameter<u64>
  end
  call $assembly/index/withdraw_from_ref
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  i32.const 12348
  global.set $~lib/rt/stub/offset
  i32.const 1360
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#constructor
  global.set $assembly/index/admins
  i32.const 1392
  call $~lib/near-sdk-core/collections/persistentUnorderedMap/PersistentUnorderedMap<~lib/string/String,bool>#constructor
  global.set $assembly/index/tokens
  i32.const 4
  i32.const 7
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 1424
  call $~lib/as-bignum/utils/atou128
  i32.store
  local.get $0
  global.set $assembly/index/storageCosts
  i32.const 0
  i32.const 11
  call $~lib/rt/stub/__new
  drop
  i32.const 4
  i32.const 16
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 17
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  call $~lib/array/Array<~lib/assemblyscript-json/JSON/Value>#constructor
  i32.store
  local.get $0
  global.set $~lib/assemblyscript-json/JSON/_JSON.handler
  global.get $~lib/assemblyscript-json/JSON/_JSON.handler
  local.set $1
  i32.const 8
  i32.const 19
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store
  local.get $0
  global.set $~lib/assemblyscript-json/JSON/_JSON.decoder
  i32.const 0
  i32.const 28
  call $~lib/rt/stub/__new
  local.tee $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 13
   call $~lib/rt/stub/__new
  end
  global.set $~lib/assemblyscript-json/JSON/NULL
 )
)
