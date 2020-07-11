FROM alpine

ENV VERSION="frpc_linux_amd64" \
    TOKEN="abc" \
    SID="serverid"

RUN apk add --no-cache ca-certificates && \
    wget --no-check-certificate  https://qianqu.me/frp/${VERSION} && \ 
    mv ${VERSION} /sakura && \
    chmod +x /sakura && \
    rm -rf *.tar.gz /var/cache/apk/* /tmp/*

CMD exec /sakura -t $TOKEN -s $SID
