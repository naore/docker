/usr/sbin/sshd -D && \
/usr/bin/ss-server -c /etc/shadowsocks-libev/config.json -f /s.pid && \
/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json 
