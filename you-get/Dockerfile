FROM python:rc-alpine

RUN apk add --no-cache ffmpeg && \
    pip3 install you-get && \
    mkdir -p /downloads && \
    rm -rf /tmp/* /var/cache/apk/* && \
    touch /init && \
    chmod +x /init && \
    echo "#!/bin/sh" >> /init && \
    echo "pip3 install -U you-get" >> /init && \
    echo 'you-get "$@"' >> /init

WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "/init" ]
CMD [ "--help" ]
