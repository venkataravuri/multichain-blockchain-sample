#!/bin/bash
#
echo "Sleeping for 15 seconds for blockchain to start before starting explorer ..."
sleep 15
python -m Mce.abe --config blockchain-wuc.conf --commit-bytes 100000
#