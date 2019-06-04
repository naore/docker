# Dockerfile for ss-local

FROM shadowsocks/shadowsocks-libev:latest as builder

FROM alpine

COPY --from=builder /usr/bin/ss-* /usr/bin/
RUN apk add --no-cache rng-tools \
      $(scanelf --needed --nobanner /usr/bin/ss-* \
      | awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' \
      | sort -u) \
    && touch /s.pid \
    && rm -rf /var/cache/apk/* /tmp/*
COPY s.json /s.json

CMD ss-local -c /s.json -f /s.pid
