sudo apt install squid3;
sed -i -e /acl SSL_ports port 443/{i\ acl localnet src 10.8.0.0/28' -e ':a;n;ba}' squid.conf;
sed -i -e '/http_access allow localhost/{i\ http_access allow localnet' -e ':a;n;ba}' squid.conf;
sudo systemctl restart squid
