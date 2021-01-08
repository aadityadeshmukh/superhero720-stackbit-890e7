#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/5ff890e7bfb7ba0017c38a16/webhook/build/pull > /dev/null
curl -s -X POST https://api.stackbit.com/project/5ff890e7bfb7ba0017c38a16/webhook/build/ssgbuild > /dev/null
hugo
curl -s -X POST https://api.stackbit.com/project/5ff890e7bfb7ba0017c38a16/webhook/build/publish > /dev/null
