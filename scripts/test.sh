#!/bin/bash
set -e

ava "./__tests__/main.ava.ts" $@ # pass along any CLI flags, such as `--verbose`


# To run only one test file:
#    ava "**/main*"         # matches test files starting with "main"
#    ava "**/whatever/**/*" # matches test files in the "whatever" directory

# To run only one test:
#    ava -- -m "root sets*" # matches tests with titles starting with "root sets"
#    yarn test -m "root sets*"       # same thing using yarn instead of npm, see https://yarnpkg.com/
