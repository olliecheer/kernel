#!/bin/bash

set -e

SCRIPT_DIR=$(readlink -f $(dirname $0))

mkdir -p $SCRIPT_DIR/out/linux

pushd $SCRIPT_DIR/linux
make O=../out/linux/ -j$(nproc)
popd

