FROM jrottenberg/ffmpeg:X.Y-alpine

ADD init /init

RUN apk add --no-cache --virtual ca-certificates mplayer rtmpdump youtube-dl && \
    mkdir -p /workdir && \
    chmod +x /init

WORKDIR /workdir

ENTRYPOINT ["/init"]

CMD ["--help"]
