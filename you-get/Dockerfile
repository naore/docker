FROM python:rc-alpine

ADD init /init

RUN apk add --no-cache ffmpeg && \
    pip3 install you-get && \
    mkdir -p /downloads && \
    rm -rf /tmp/* /var/cache/apk/* && \
    chmod +x /init

WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "/init" ]
CMD [ "--help" ]
