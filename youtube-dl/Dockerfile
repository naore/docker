FROM jrottenberg/ffmpeg:4-alpine

RUN apk add --no-cache --virtual ca-certificates mplayer rtmpdump youtube-dl && \
    mkdir -p /workdir && \
    touch /init && \
    chmod +x /init && \
    echo "#!/bin/sh" >> /init && \
    echo "apk update" >> /init && \
    echo "apk add --upgrade youtube-dl" >> /init && \
    echo 'youtube-dl "$@"' >> /init 

WORKDIR /workdir

ENTRYPOINT ["/init"]

CMD ["--help"]
