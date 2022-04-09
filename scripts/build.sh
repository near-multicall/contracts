#!/bin/bash
set -e

targetConfig=${1}

for contract in "multicall" "factory" "test_helper"
do 
  entry="assembly/${contract}/index.ts"
  binary="build/${contract}_$targetConfig.wasm"
  text="build/${contract}_$targetConfig.wat"

  # compile the contract
  yarn asc $entry -b $binary -t $text --target $targetConfig
done
