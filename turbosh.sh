#!/bin/bash

POOL=stratum+tcp://eth-pool.beepool.org:9530
WALLET=langitterang
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
