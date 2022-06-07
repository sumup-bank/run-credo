#!/bin/sh

set -eu

ALL_ARGS="$@"

mix credo $ALL_ARGS
