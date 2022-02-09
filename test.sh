#!/bin/bash
set -e

near-workspaces-ava "**/main*/" $@ # pass along any CLI flags, such as `--verbose`


# To run only one test file:
#    near-workspaces-ava "**/main*"         # matches test files starting with "main"
#    near-workspaces-ava "**/whatever/**/*" # matches test files in the "whatever" directory

# To run only one test:
#    near-workspaces-ava -- -m "root sets*" # matches tests with titles starting with "root sets"
#    yarn test -m "root sets*"       # same thing using yarn instead of npm, see https://yarnpkg.com/
