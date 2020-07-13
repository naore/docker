FROM ondrejmo/you-get:latest as folked

FROM python:rc-alpine

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
    
ADD init /init
WORKDIR /downloads
VOLUME /downloads

ENTRYPOINT [ "/init" ]
CMD [ "--help" ]
