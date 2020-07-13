FROM python:rc-alpine

ENV PUID=1000
ENV PGID=1000

RUN sed -i -e 's/v[[:digit:]]\..*\//edge\//g' /etc/apk/repositories && \
    apk add --no-cache --virtual youtube-dl ffmpeg ca-certificates && \
    mkdir -p /workdir && \
    youtube-dl --version

COPY init /init

WORKDIR /workdir

ENTRYPOINT ["/init"]
