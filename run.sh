/usr/sbin/sshd -D &
ss-server -c /etc/shadowsocks-libev/config.json &
/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json &
