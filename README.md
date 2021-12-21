# multicall.near

bundle cross-contract calls for powerful DAO proposals

## Quick Start

1. Setup [near-cli](https://docs.near.org/docs/tools/near-cli).
2. Install dependencies: `yarn`
3. Compile: `yarn asc --target release`
4. Deploy:  
    ```bash
    near deploy $CONTRACT_ADDRESS build/release/contract.wasm
    ```
6. Initialize the contract:
    ```bash
    near call $CONTRACT_ADDRESS init '{"account_ids":["$YOUR_ACCOUNT"],"croncat_manager":"$CRONCAT_MANAGER","job_bond":"100000000000000000000000"}' --amount 0.1 --accountId $YOUR_ADDRESS
    ```

where 
* `$YOUR_ACCOUNT` is the account you're using to interact with the contract 
* `$CONTRACT_ADDRESS` is the address you want to deploy the contract at 
* `$CRONCAT_MANAGER` is the address for croncat's manager contract, can be found [here](https://docs.cron.cat/docs/deployed-contracts/#manager).

## Architecture

This project consists of three main features:

1. The **main method** in this contract is:  
`multicall ( schedules: ContractCall[][] )`  
It executes a bunch of `ContractCall` arrays.  
Each `ContractCall` has information for making a cross-contract call: the target address, function name, arguments encoded in base64, gas to use (u64 encoded as string) and amount of yoctoNEAR attached deposit (u128 encoded as string).  
Contract calls inside one array run one after another, as a promise chain.  
Different arrays of contract calls run in parallel.  
Example: `TX_12` waits for `TX_11` and `TX_13` waits for `TX_12`. `TX_22` waits for `TX_21`. The two arrays start executing in the same block.
    ```
    schedules = [
        [ TX_11, TX_12, TX_13 ],
        [ TX_21, TX_22]
    ]
    ```  


2. **Permissioned interactions** with the contract through whitelisting of addresses:  
Due to the async nature of Near, funds can sit in the contract during multiple blocks awaiting the execution of cross-contract calls. To prevent stealing of funds, we require an address to be whitelisted before calling one of the contract's critical methods.
there are two main whitelists:  
`admins whitelist` holds addresses that can interact with the contract, they can add or remove others from the whitelist.  
`tokens whitelist` holds token addresses that can be attached to function calls, as the contract implements ft_on_transfer.  
The contract's address is whitelisted by default, this allows nesting multiple contract methods for convenience.  

3. **Jobs**:  
Multicall executions can be scheduled to run in recurring fashion, made possible by integrating [croncat](https://cron.cat/). Anyone can register a job on the multicall contract, but an admin has to approve it. Admins can pause/resume job executions and also edit a job's multicall arguments.  
The following must be specified when creating a job:
    ```ts
    function job_add (
        job_schedules: ContractCall[][], // multicall arguments
        job_cadence: string, // cron expression
        job_trigger_gas: u64,
        job_trigger_deposit: u128,
        job_total_budget: u128,
        job_runs_max: u64,
        job_start_at: u64 = context.blockTimestamp
    ): i32 
    ```

## Example Calls

### Call structure
example multicall arguments:
```json=
{
    "schedules": [
        [ 
            {
                "addr": "hello.lennczar.testnet",
                "func": "hello",
                "args": "eyJ0aGluZyI6IldvcmxkIn0=", // base64 encoding for {"thing":"World"}
                "gas": "10000000000000",
                "depo": "0"
            }
        ]
    ]
}
```
This example calls the function `hello(thing: string): string` in the contract `hello.lennczar.testnet`.


### Use case: SputnikDAO custom function proposals  
The following is an example created as part of [a Near Metabuidl Challenge](https://airtable.com/shrdNEynK25TGJ91h/tblTtriXzrEiCfpoy/viwGhGQTKiJ4L5JSG/recUH7SubilpUKeNm).
A [DAO proposal](https://testnet-v2.sputnik.fund/#/voyager.sputnikv2.testnet/6) was created with the JSON below.   
The resulting transaction can be seen [here](https://explorer.testnet.near.org/transactions/ELhBMPALasHNuugPNRoiWU4GYFDkyS4AHRCK35k11xMF
) <sub>(link uses outdated code)</sub>. 
```json=
{
   "schedules": [
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
