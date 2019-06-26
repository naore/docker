FROM v2ray/official:latest

ENV VERSION="Sakura_frpc_linux_amd64" \
    USERNAME="abc" \
    PASSWD="abc" \
    SID="serverid"
    
COPY v.json /v.json
COPY supervisord.conf /etc/supervisord.conf

RUN set -ex && \
    apk --no-cache --update add ca-certificates supervisor && \
    mkdir /var/log/supervisor &&\
    wget --no-check-certificate https://cdn.tcotp.cn:4443/client/${VERSION}.tar.gz && \ 
    tar xzf ${VERSION}.tar.gz && \
    mv ${VERSION} /sakura && \
    chmod +x /sakura && \
    rm -rf *.tar.gz /var/cache/apk/* /tmp/*

EXPOSE 16102

ENTRYPOINT ["supervisord", "-c", "/etc/supervisord.conf"]
