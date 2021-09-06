# multicall.near

A useful tool to bundle multiple cross-contract calls. 

## Quick Start

1. Setup [near-cli](https://docs.near.org/docs/tools/near-cli).
2. Install dependencies: `yarn`
3. Compile: `yarn asb`
4. Deploy: 
    ```json
    near deploy $CONTRACT_ADDRESS contract.wasm
    ```
6. Initialize the contract:
    ```json
    near call $CONTRACT_ADDRESS init '{"account_ids":["$YOUR_ACCOUNT"]}' --amount 0.01 --accountId $YOUR_ADDRESS
    ```

where 
* `$YOUR_ACCOUNT` is the account you're using to interact with the contract 
* `$CONTRACT_ADDRESS` is the address you want to deploy the contract at

## Architecture

This project consists of three main features:

1. The **two main methods** in this contract are:
`sequential(schedule: ContractCalls[])`
`parallel(schedule: ContractCalls[])`
both take an array as parameter. Each of its elements represents information for making a cross-contract calls. The main difference between both methods, is that `sequential` executes contract calls one-after-the-other, as a promise chain. `parallel` will fire all of them in parallel, in the same block.

2. **Permissioned interactions** with the contract through whitelisting of addresses:
Due to the async nature of Near, funds can sit in the contract during multiple blocks waiting for the execution of cross-contract calls. To prevent stealing of these funds, we require an address to be whitelisted first before calling one of the contract's methods.
Whitelisted addresses can add or remove others from the whitelist.
The contract's address is whitelisted by default, as that allows for nesting and combinating the 2 main methods to get precise control over the transaction's execution flow.
    

3. **Helper functions**:
Commonly needed combinations of cross-contract calls can be added to this contract as helper functions. Especially when promises are conditionally added to the promise chain depending on previous return values.
Currently we have `withdraw_from_ref()` that makes withdrawing multiple tokens from ref-finance to some destination address possible with one function call (of course it triggers other calls under the hood)


## Example Call

### Call structure
The `schedule` argument in the `sequential` as well as `parallel` function is of type `ContractCall[]`. The structure of a `ContractCall` is just like in the following example:
```json
{
    "addr":"hello.lennczar.testnet",
    "func":"hello",
    "args":"{\"thing\":\"World\"}",
    "gas":"10000000000000",
    "depo":"0"
}
```
This example calls the function `hello(thing: string): string` in the contract `hello.lennczar.testnet`.

### Sequential call
```json=
near call $CONTRACT_ADRESS sequential '{
    "schedule":[
        {"addr":"hello.lennczar.testnet","func":"when_am_I","args":"{}","gas":"10000000000000","depo":"0"},
        {"addr":"hello.lennczar.testnet","func":"when_am_I","args":"{}","gas":"10000000000000","depo":"0"}
    ]
}' --amount 0.1 --accountId $YOUR_ACCOUNT --gas 50000000000000
```
As it can be seen [here](https://explorer.testnet.near.org/transactions/2qsCvUNyih6sEZWJUoU1cCZdeSUT76G3PRmFYnTuk4ps), the cross contract calls to `hello.lennczar.near` are happening one after the other.
### Parallel call
```json=
near call $CONTRACT_ADRESS parallel '{
    "schedule":[
        {"addr":"hello.lennczar.testnet","func":"when_am_I","args":"{}","gas":"10000000000000","depo":"0"},
        {"addr":"hello.lennczar.testnet","func":"when_am_I","args":"{}","gas":"10000000000000","depo":"0"}
    ]}' --amount 0.1 --accountId $YOUR_ACCOUNT --gas 300000000000000
```
In contrast to what happend in the sequential call, the cross contract calls to `hello.lennczar.near` are now happening simultaneously, as it can be seen [here](https://explorer.testnet.near.org/transactions/HkHCcz42n3r31GtFTv2UYt1m6GdSPfPbrXa2GF5Gpj5S).

# Testnet
