#!/bin/bash
set -e

for contract in "multicall" "factory"
do 
  entry="assembly/${contract}/index.ts"
  binary="build/${contract}/$@/contract.wasm"
  text="build/${contract}/$@/contract.wat"

  # compile the contract
  yarn asc $entry -b $binary -t $text --target $@
done
