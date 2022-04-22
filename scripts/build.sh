#!/bin/bash
set -e

targetConfig=${1}


# local function to compile contracts sequentially.
# we use it to compile contracts that depend on each other.
# but we run mulitple instances of it in parallel so unrealted contracts are compiled in parallel.
function compile_contracts {
  for contract in "$@";
  do 
    echo "compiling ${contract}"

    entry="assembly/${contract}/index.ts"
    binary="build/${contract}_$targetConfig.wasm"
    text="build/${contract}_$targetConfig.wat"

    # compile the contract
    yarn asc $entry -b $binary -t $text --target $targetConfig
  done
}

compile_contracts "test_helper" &
compile_contracts "multicall" "factory" &
wait

echo "finished compiling contracts"
