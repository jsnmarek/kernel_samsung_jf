#!/bin/sh
export CARRIER="ATT"
export ADD_CHRONIC_CONFIG="Y"
export EXEC_LOKI="Y"
echo "### AT&T KERNEL BUILD ###"
./build_master.sh
