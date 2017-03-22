#!/bin/bash
#
echo "Sleeping for 15 seconds to make master/primary node to start ..."
sleep 15
multichaind blockchain-wuc@india-primary-node:7447 -datadir=/multichain-data
#