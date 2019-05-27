# Dockerfile for ss

FROM shadowsocks/shadowsocks-libev:latest

COPY s.json /s.json
COPY s.pid /s.pid

CMD ss-server -c /s.json -f /s.pid
