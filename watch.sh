#!/usr/bin/env bash
set -eu -o pipefail

./build.sh

fswatch -o trees/ | while read -r _ ; \
  do \
    echo "Rebuilding forest"
    time ./build.sh
    echo "Done"
    echo
  done
