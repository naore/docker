FROM python:rc-alpine

ADD init /init

RUN apk add --no-cache --virtual ffmpeg ca-certificates mplayer rtmpdump && \
    pip3 install youtube-dl && \
    mkdir -p /workdir && \
    chmod +x /init

WORKDIR /workdir

ENTRYPOINT ["/init"]

CMD ["--help"]
