FROM shadowsocks/shadowsocks-libev:latest

RUN touch /s.pid \
    && mkdir /conf \
    && touch /conf/s.json 

EXPOSE 1080
VOLUME /conf

CMD ss-local -c /conf/s.json -f /s.pid --reuse-port
