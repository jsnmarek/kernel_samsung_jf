#!/bin/sh
export CARRIER="TMO"
export ADD_CHRONIC_CONFIG="Y"
export EXEC_LOKI="N"
echo "### T-MOBILE KERNEL BUILD ###"
./build_master.sh
