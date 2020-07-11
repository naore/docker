FROM multiarch/alpine:arm64-latest-stable

ENV VERSION="frpc_linux_arm64" \
    TOKEN="abc" \
    SID="serverid"

RUN apk add --no-cache ca-certificates && \
    wget --no-check-certificate  https://qianqu.me/frp/${VERSION} && \ 
    mv ${VERSION} /sakura && \
    chmod +x /sakura && \
    rm -rf *.tar.gz /var/cache/apk/* /tmp/*

CMD exec /sakura -t $TOKEN -s $SID
