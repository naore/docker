FROM alpine

ENV ARIANG_VER 1.1.6
#ENV RPC_SECRET=""

RUN apk update \
 && apk add --no-cache --update bash darkhttpd sed \
 && mkdir -p /data /ariang \
 && wget https://github.com/mayswind/AriaNg/releases/download/${ARIANG_VER}/AriaNg-${ARIANG_VER}.zip \
 && unzip AriaNg-${ARIANG_VER}.zip -d /ariang \
 && rm -rf AriaNg-${ARIANG_VER}.zip \
 && touch /start.sh \
 && chmod +x /start.sh \
 && echo "#!/bin/sh" >> /start.sh \
 && echo 'sed -i "s/,secret:\"\",/,secret:\"${RPC_SECRET}\",/" /ariang/js/aria-ng-*.min.js ' >> /start.sh \
 && echo "darkhttpd /data --port 8080 & " >> /start.sh \
 && echo "darkhttpd /ariang --port 80 " >> /start.sh \
 && rm -rf /tmp/* /var/cache/apk/*

WORKDIR /

VOLUME /data

EXPOSE 8080 80

CMD ["/start.sh"]
