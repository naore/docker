FROM ondrejmo/you-get:latest as folked

FROM python:3-alpine

## https://github.com/soimort/you-get
# you-get(){
#   docker run -it --rm \
#     -u $(id -u):$(id -g) \
#     -v "$PWD":/downloads \
#     -w /downloads \
#     ondrejmo/you-get "$@"
# }

RUN apk add --no-cache ffmpeg && \
    pip3 install you-get && \
    mkdir -p /downloads && \
    rm -rf /tmp/* /var/cache/apk/* 
    
WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "you-get" ]
CMD [ "--help" ]
