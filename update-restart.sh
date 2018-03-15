#!/bin/bash
SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE:-$0}"); pwd)
$SCRIPT_DIR/update.sh
cd $SCRIPT_DIR/compose
./restart.sh
