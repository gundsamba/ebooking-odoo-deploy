#!/bin/bash
SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE:-$0}"); pwd)
source $SCRIPT_DIR/.env

cd $SCRIPT_DIR/compose/extra-addons
git pull

MODULE_NAME=$(echo $(for i in *
do
  if [ -d $i ]
  then
    echo $i
  fi
done) |sed -e 's/ /,/g')
echo updating: $MODULE_NAME
$SCRIPT_DIR/odoo.sh --stop-after-init -u $MODULE_NAME
