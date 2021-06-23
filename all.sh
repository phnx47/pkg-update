#!/bin/sh

SCRIPT_DIR=`dirname $0`
echo $SCRIPT_DIR

$SCRIPT_DIR/firmware.sh
$SCRIPT_DIR/drop-cache.sh
$SCRIPT_DIR/mirror-list.sh
$SCRIPT_DIR/arch.sh
$SCRIPT_DIR/cargo.sh
$SCRIPT_DIR/yarn.sh
fish $SCRIPT_DIR/fisher.sh
$SCRIPT_DIR/vim-plug.sh
