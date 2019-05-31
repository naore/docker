FROM alpine

ENV VERSION="Sakura_frpc_linux_amd64" \
    USERNAME abc \
    PASSWD abc \
    SID serverid
# ENV ID tunnelid

RUN apk upgrade && apk add --no-cache ca-certificates && \
    wget --no-check-certificate https://cdn.tcotp.cn:4443/client/${VERSION}.tar.gz  && \ 
    tar xzf ${VERSION}.tar.gz && \
    mv ${VERSION} /sakura && \
    chmod +x /sakura && \
    rm -rf *.tar.gz && \
    rm -rf ${VERSION} && \
    rm -rf /var/cache/apk/*

CMD exec /sakura --su=$USERNAME --sp=$PASSWD --sid=$SID --disable-pause
