#!/bin/sh
export CARRIER="INTL"
export ADD_CHRONIC_CONFIG="Y"
export EXEC_LOKI="N"
echo "### INTERNATIONAL KERNEL BUILD ###"
./build_master.sh
