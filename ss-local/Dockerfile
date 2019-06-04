FROM shadowsocks/shadowsocks-libev:latest
USER root
RUN touch /s.pid \
    && mkdir /conf \
    && touch /conf/s.json 
USER nobody
EXPOSE 1080
VOLUME /conf

CMD ss-local -c /conf/s.json -f /s.pid -u --reuse-port
