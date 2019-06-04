FROM shadowsocks/shadowsocks-libev:latest

EXPOSE 1080 1080/udp

CMD ss-local -s $SERVER_HOST -p $SERVER_PORT -b $LOCAL_IP -l 1080 -k $PASSWD -m $METHOD -u --reuse-port
