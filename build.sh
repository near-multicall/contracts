#!/bin/bash
set -e

echo "compiling multicall contract"
yarn asc --target releae

# TODO: compile factory
