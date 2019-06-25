# Dockerfile for pv

FROM v2ray/official:latest as builder

FROM nginx:alpine

COPY --from=builder /usr/bin/v2ray/* /usr/bin/v2ray/
COPY vs.json /v.json
COPY nginx/nginx.conf /etc/nginx/
COPY nginx/pki/ /etc/nginx/pki/
COPY supervisord.conf /etc/supervisord.conf

RUN set -ex && \
    apk --no-cache --update add ca-certificates supervisor && \
    mkdir /var/log/v2ray/ && \
    mkdir /var/log/supervisor &&\
    chmod +x /usr/bin/v2ray/v2ctl && \
    chmod +x /usr/bin/v2ray/v2ray && \
    rm -rf /var/cache/apk/* /tmp/*

EXPOSE 443

ENTRYPOINT ["supervisord", "-c", "/etc/supervisord.conf"]
