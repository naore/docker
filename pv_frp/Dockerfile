FROM v2ray/official:latest

ENV VERSION="Sakura_frpc_linux_amd64" \
    USERNAME="abc" \
    PASSWD="abc" \
    SID="serverid"
    
COPY v.json /v.json
COPY supervisord.conf /etc/supervisord.conf
COPY ${VERSION} /sakura

RUN set -ex && \
    apk --no-cache --update add ca-certificates supervisor && \
    mkdir /var/log/supervisor &&\
    chmod +x /sakura && \
    rm -rf /var/cache/apk/* /tmp/*

EXPOSE 16102

ENTRYPOINT ["supervisord", "-c", "/etc/supervisord.conf"]
