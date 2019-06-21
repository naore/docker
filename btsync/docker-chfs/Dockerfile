FROM alpine
ENV GLIBC_VERSION 2.26-r0

RUN apk add --no-cache --update curl ca-certificates supervisor && \
    curl -o /tmp/glibc.apk -L "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk" && \
    curl -o /tmp/glibc-bin.apk -L "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-bin-${GLIBC_VERSION}.apk" && \
    apk add --allow-untrusted /tmp/glibc.apk && \
    apk add --allow-untrusted /tmp/glibc-bin.apk && \
    curl -o /tmp/btsync.tar.gz  -L "https://raw.githubusercontent.com/FreemanZY/BTSync-DHT-Docker/master/btsync_x64-1.4.111.tar.gz" && \
    mkdir -p /opt/btsync && \
    tar -xzf /tmp/btsync.tar.gz -C /opt/btsync && \
    mkdir -p /opt/chfs && \
    apk del curl ca-certificates && \
    mkdir -p /btsync/data && \
    mkdir -p /btsync/config && \
    mkdir -p /mount && \
    mkdir /var/log/supervisor && \
    rm -rf /var/cache/apk/* /tmp/* 
    
COPY btsync.conf /btsync/config/btsync.conf
COPY supervisord.conf /etc/supervisord.conf
COPY chfs /opt/chfs/chfs

EXPOSE 80 8888 55555
VOLUME /mount /btsync/data
ENTRYPOINT ["supervisord", "-c", "/etc/supervisord.conf"]
