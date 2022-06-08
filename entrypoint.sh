#!/bin/sh

set -eu

ALL_ARGS="$@"

function log() {
  echo "[entrypoint][$(date +'%H:%M:%S%z')]: $@"
}

function main() {
    log Running with args: $ALL_ARGS
    mix credo $ALL_ARGS
}

main
