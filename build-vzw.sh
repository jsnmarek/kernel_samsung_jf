#!/bin/sh
export CARRIER="VZW"
export ADD_CHRONIC_CONFIG="Y"
export EXEC_LOKI="Y"
echo "### VERIZON KERNEL BUILD ###"
./build_master.sh
