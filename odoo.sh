#!/bin/bash
SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE:-$0}"); pwd)
source $SCRIPT_DIR/.env
docker exec -it \
  $(docker ps -a|grep odoo|awk '{print $1}') \
  odoo -d $DB --db_host=$DB_HOST --db_user=$DB_USER --db_password=$DB_PASS \
  $*
