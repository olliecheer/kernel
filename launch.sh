#!/bin/bash

SCRIPT_DIR=$(readlink -f $(dirname $0))

tmux new -d sudo $SCRIPT_DIR/tools/kernel-boot -d $SCRIPT_DIR/image/jammy.img -k $SCRIPT_DIR/out/linux/arch/x86_64/boot/bzImage -K
