FROM multiarch/alpine:arm64-latest-stable

ENV VERSION="frpc_linux_arm64" \
    TOKEN="abc" \
    TUNNELID="tunnelid"

RUN apk add --no-cache ca-certificates && \
    wget --no-check-certificate  https://qianqu.me/frp/${VERSION} && \ 
    mv ${VERSION} /sakura && \
    chmod +x /sakura && \
    rm -rf /var/cache/apk/* /tmp/*

ENTRYPOINT [ "/sakura" ]

CMD [ "--help" ]
