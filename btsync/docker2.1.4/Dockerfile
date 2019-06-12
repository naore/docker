FROM alpine:3.7
ENV GLIBC_VERSION 2.26-r0

RUN apk add --no-cache --update-cache --update curl ca-certificates && \
    curl -o /tmp/glibc.apk -L "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk" && \
    curl -o /tmp/glibc-bin.apk -L "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-bin-${GLIBC_VERSION}.apk" && \
    apk add --allow-untrusted /tmp/glibc.apk && \
    apk add --allow-untrusted /tmp/glibc-bin.apk && \
    curl -o /tmp/btsync.tar.gz  -L "https://download-cdn.getsync.com/2.1.4/linux-x64/BitTorrent-Sync_x64.tar.gz" && \
    mkdir -p /opt/btsync && \
    tar -xzf /tmp/btsync.tar.gz -C /opt/btsync && \
    apk del curl ca-certificates && \
    rm -rf /tmp/* /var/cache/apk/* && \
    mkdir -p /btsync/data && \
    mkdir -p /btsync/config && \
    mkdir -p /mount
    
COPY btsync.conf /btsync/config/btsync.conf

EXPOSE 8888 55555
VOLUME /mount /btsync/data
ENTRYPOINT ["/opt/btsync/btsync"]
CMD ["--nodaemon","--config","/btsync/config/btsync.conf"]
