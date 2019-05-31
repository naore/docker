FROM alpine

ENV VERSION="Sakura_frpc_linux_amd64"
ENV USERNAME abc
ENV PASSWD abc
ENV SID serverid
ENV ID tunnelid

RUN apk add --no-cache ca-certificates && \
    wget --no-check-certificate https://cdn.tcotp.cn:4443/client/${VERSION}.tar.gz  && \ 
    tar xzf ${VERSION}.tar.gz && \
    mv ${VERSION} /sakura && \
    chmod +x /sakura && \
    echo "#!/bin/bash \n /sakura --su=${USERNAME} --sp=${PASSWD} --sid=${SID} --sc=${ID} --disable-pause" > /entrypoint.sh && \
    cat /entrypoint.sh && \
    chmod +x /entrypoint.sh && \
    rm -rf *.tar.gz && \
    rm -rf ${VERSION} && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/entrypoint.sh"]
