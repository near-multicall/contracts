# multicall.near

![tests workflow](https://github.com/quicswap/near-multicall/actions/workflows/tests.yml/badge.svg)  

bundle cross-contract calls for powerful DAO proposals

## Quick Start

1. Setup [near-cli](https://docs.near.org/docs/tools/near-cli).
2. Install dependencies: `yarn`
3. Compile: `yarn build:release`
4. Test: `yarn test`
5. Deploy:  
    ```bash
    near deploy $CONTRACT_ADDRESS ./build/multicall_release.wasm
    ```
6. Initialize the contract:
    ```bash
    near call $CONTRACT_ADDRESS init '{"admin_accounts":["$YOUR_ACCOUNT"],"croncat_manager":"$CRONCAT_MANAGER","job_bond":"100000000000000000000000"}' --amount 0.1 --accountId $YOUR_ACCOUNT
    ```

where 
* `$YOUR_ACCOUNT` is the account you're using to interact with the contract 
* `$CONTRACT_ADDRESS` is the address you want to deploy the contract at 
* `$CRONCAT_MANAGER` is the address for croncat's manager contract, can be found [here](https://docs.cron.cat/docs/deployed-contracts/#manager).  

## Networks  

### NEAR Mainnet  

| Contract             | Address                                      | Code hash                              |
|----------------------|----------------------------------------------|----------------------------------------|
| Factory              | [`v1.multicall.near`](https://explorer.near.org/accounts/v1.multicall.near) | `2Y3VuVZTPaXGBnRj6Av9ymKM17iSGv1b1xJTsdkrmSFh` |  

### NEAR Testnet  

| Contract             | Address                                      | Code hash                              |
|----------------------|----------------------------------------------|----------------------------------------|
| Factory              | [`v1_03.multicall.testnet`](https://explorer.testnet.near.org/accounts/v1_03.multicall.testnet) | `2Y3VuVZTPaXGBnRj6Av9ymKM17iSGv1b1xJTsdkrmSFh` |  

## Architecture

This project consists of three main features:

1. The **main method** in this contract is:  
`multicall ( calls: BatchCall[][] )`  
It executes a bunch of `BatchCall` arrays.  
Each `BatchCall` has information for making a batch of function-calls: a target address and an array on function-calls to execute on that target. Each function-call has a function name, arguments encoded in base64, gas to use (u64 encoded as string) and amount of yoctoNEAR attached deposit (u128 encoded as string).  
Batches inside one array run one after another, as a promise chain.  
Different arrays of batches run in parallel.  
Example:  
    ```
    calls = [
        [ Batch_11, Batch_12, Batch_13 ],
        [ Batch_21, Batch_22]
    ]
    ```  
    In this example we have 2 arrays of batches. In the first one `Batch_12` waits for `Batch_11` and `Batch_13` waits for `Batch_12`. In the second array `Batch_22` waits for `Batch_21`. Both arrays start executing in the same block and are independent of each other.

2. **Permissioned interactions** with the contract through whitelisting of addresses:  
Due to the async nature of Near, funds can sit in the contract during multiple blocks awaiting the execution of cross-contract calls. To prevent stealing of funds, we require an address to be whitelisted before calling one of the contract's critical methods.
there are two main whitelists:  
`admins whitelist` holds addresses that can interact with the contract, they can add or remove others from the whitelist.  
`tokens whitelist` holds token addresses that can be attached to function calls, as the contract implements ft_on_transfer.  
The contract's address is whitelisted by default, this allows nesting multiple contract methods for convenience.  

3. **Jobs**:  
Multicall executions can be scheduled to run at a certain time in the future, made possible by integrating [croncat](https://cron.cat/). Anyone can register a job on the multicall contract, but an admin has to approve it. Admins can pause/resume job executions and also edit a job's multicall arguments.  
The following must be specified when creating a job:
    ```ts
    function job_add (
        job_multicalls: MulticallArgs[],
        job_cadence: string, // cron expression
        job_trigger_gas: u64,
        job_total_budget: u128,
        job_start_at: u64 = context.blockTimestamp
    ): u32 
    ```

## Example Calls

### Call structure
example multicall arguments:
```json=
{
    "calls": [
        [ 
            {
                "address": "hello.lennczar.testnet",
                "actions": [
                    {
                        "func": "hello",
                        "args": "eyJ0aGluZyI6IldvcmxkIn0=", // base64 encoding for {"thing":"World"}
                        "gas": "10000000000000",
                        "depo": "0"
                    },
                    {
                        "func": "hello",
                        "args": "eyJ0aGluZyI6IldvcmxkIn0=", // base64 encoding for {"thing":"World"}
                        "gas": "10000000000000",
                        "depo": "0"
                    }
                ]
            },
            {
                "address": "hello.lennczar.testnet",
                "actions": [
                    {
                        "func": "hello",
                        "args": "eyJ0aGluZyI6IldvcmxkIn0=", // base64 encoding for {"thing":"World"}
                        "gas": "10000000000000",
                        "depo": "0"
                    }
                ]
            }
        ],
        [
            {
                "address": "hello.lennczar.testnet",
                "actions": [
                    {
                        "func": "hello",
                        "args": "eyJ0aGluZyI6IldvcmxkIn0=", // base64 encoding for {"thing":"World"}
                        "gas": "10000000000000",
                        "depo": "0"
                    }
                ]
            }
        ]
    ]
}
```
This example calls the function `hello(thing: string): string` in the contract `hello.lennczar.testnet`.  
We see two arrays of batches: in the first array we have 2 batches that will be run as a promise chain (i.e. second batch will wait for the first batch). The first batch calls the function twice and the second batch calls it only once. In the second array we have one batch that calls the function once, it will run in parallel independently of the two previously mentioned batches.  
Running this results in the following [transaction](https://explorer.testnet.near.org/transactions/HHEDj5FnRXJpGwR68PegHNWgpGjXcFWFyq2Nw27sDkx2)  


### (OUTDATED) Use case: SputnikDAO custom function proposals  
The following is an example created as part of [a Near Metabuidl Challenge](https://airtable.com/shrdNEynK25TGJ91h/tblTtriXzrEiCfpoy/viwGhGQTKiJ4L5JSG/recUH7SubilpUKeNm).
A [DAO proposal](https://testnet-v2.sputnik.fund/#/voyager.sputnikv2.testnet/6) was created with the JSON below.   
The resulting transaction can be seen [here](https://explorer.testnet.near.org/transactions/ELhBMPALasHNuugPNRoiWU4GYFDkyS4AHRCK35k11xMF
) <sub>(link uses outdated code)</sub>. 
```json=
{
   "actions": [
      [
          {
             "addr": "ref-finance-101.testnet",
             "func": "storage_deposit",
             "args": "eyJhY2NvdW50X2lkIjoibXVsdGljYWxsLmNobHVmZjEudGVzdG5ldCJ9", // base64 for {"account_id":"multicall.chluff1.testnet"}
             "gas": "6000000000000",
             "depo": "1250000000000000000000"
          },
          {
             "addr": "wrap.testnet",
             "func": "near_deposit",
             "args": "e30=", // base64 for {}
             "gas": "4000000000000",
             "depo": "100000000000000000000000"
          },
          {
             "addr": "wrap.testnet",
             "func": "ft_transfer_call",
             "args": "eyJyZWNlaXZlcl9pZCI6InJlZi1maW5hbmNlLTEwMS50ZXN0bmV0IiwiYW1vdW50IjoiMTAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwIiwgIm1zZyI6IiJ9", // base64 for {"receiver_id":"ref-finance-101.testnet","amount":"100000000000000000000000", "msg":""}
             "gas": "40000000000000",
             "depo": "1"
          },
          {
             "addr": "ref-finance-101.testnet",
             "func": "swap",
             "args": "eyJhY3Rpb25zIjpbeyJwb29sX2lkIjo2LCJ0b2tlbl9pbiI6IndyYXAudGVzdG5ldCIsImFtb3VudF9pbiI6IjEwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMCIsInRva2VuX291dCI6Im51c2RjLmZ0LWZpbi50ZXN0bmV0IiwibWluX2Ftb3VudF9vdXQiOiIxIn1dfQ==" // base64 for {"actions":[{"pool_id":6,"token_in":"wrap.testnet","amount_in":"100000000000000000000000","token_out":"nusdc.ft-fin.testnet","min_amount_out":"1"}]},
             "gas": "20000000000000",
             "depo": "1"
          },
          {
             "addr": "ref-finance-101.testnet",
             "func": "get_deposits",
             "args": "eyJhY2NvdW50X2lkIjoibXVsdGljYWxsLmNobHVmZjEudGVzdG5ldCJ9" // base64 for {"account_id":"multicall.chluff1.testnet"},
             "gas": "5000000000000",
             "depo": "0"
          },
          {
             "addr": "multicall.chluff1.testnet",
             "func": "withdraw_from_ref",
             "args": "eyJyZWZfYWRkcmVzcyI6InJlZi1maW5hbmNlLTEwMS50ZXN0bmV0IiwidG9rZW5zIjpbIm51c2RjLmZ0LWZpbi50ZXN0bmV0Il0sInJlY2VpdmVyX2lkIjoidm95YWdlci5zcHV0bmlrdjIudGVzdG5ldCIsIndpdGhkcmF3YWxfZ2FzIjoiNTUwMDAwMDAwMDAwMDAiLCJ0b2tlbl90cmFuc2Zlcl9nYXMiOiI0MDAwMDAwMDAwMDAwIiwiZGVwb3NpdCI6IjEifQ==", // base64 for {"ref_address":"ref-finance-101.testnet","tokens":["nusdc.ft-fin.testnet"],"receiver_id":"voyager.sputnikv2.testnet","withdrawal_gas":"55000000000000","token_transfer_gas":"4000000000000","deposit":"1"}
             "gas": "95000000000000",
             "depo": "0"
          }
      ]
   ]
}
```

***Note:*** we recommend making the `add_proposal` transaction using near-cli, as the SputnikDAO UI only allocates 150 TeraGas per default to the custom function call. This might not be sufficient.   
