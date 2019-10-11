#!/bin/bash

set -ex

cd "$(dirname "$0")"/..
./node_modules/.bin/onchange \
  -v \
  -i \
  '**/*' \
  --exclude-path .gitignore \
  -e '.git/**/*' \
  --await-write-finish \
  -- \
  npm run build
