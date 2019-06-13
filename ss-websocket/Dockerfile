FROM node:lts-alpine

LABEL maintainer=naore

ENV APP=app METHOD=aes-256-cfb KEY=key

RUN apk --no-cache add git bash tzdata python make && \
    cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    git clone https://github.com/VincentChanX/shadowsocks-over-websocket.git /ss-ws && \
    npm install ws && \
    cd /ss-ws && \
    npm install && \
    rm -rf /var/cache/apk/* /tmp/*

EXPOSE 1080

CMD node /ss-ws/local.js -s ${APP}.herokuapp.com -l 1080 -m $METHOD -k $KEY -p 80
