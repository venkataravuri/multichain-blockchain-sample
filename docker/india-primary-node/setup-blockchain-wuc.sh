#!/bin/bash
# Maintained by Venkata Ravuri
#
# Create multichain-data folder if not exist
#mkdir -p multichain-data
#
# Create a new blockchain named blockchain-wuc
#
FILE=/multichain-data/blockchain-wuc/params.dat
if [ ! -f $FILE ]; then
    echo "Blockchain <blockchain-wuc> not found, creating one ..."
	multichain-util create blockchain-wuc -datadir=/multichain-data
	echo "Overwriting params.dat and multichain.conf files ..."
	cp /tmp/params.dat /multichain-data/blockchain-wuc/params.dat
	cp /tmp/multichain.conf /multichain-data/blockchain-wuc/multichain.conf
fi
#echo "Blockchain <blockchain-wuc> found. Starting blockchain daemon ..."
#multichaind blockchain-wuc -daemon -datadir=/multichain-data -shrinkdebugfilesize -printtoconsole



