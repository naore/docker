FROM jrottenberg/ffmpeg:4.3.1-alpine311

ADD init /init

RUN apk add --no-cache --virtual ca-certificates mplayer rtmpdump youtube-dl && \
    mkdir -p /workdir && \
    chmod +x /init

WORKDIR /workdir

ENTRYPOINT ["/init"]

CMD ["--help"]
