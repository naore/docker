FROM alpine

RUN apk add --no-cache darkhttpd \
 && rm -rf /tmp/* /var/cache/apk/*

EXPOSE 80

VOLUME /home

CMD ["darkhttpd /home --port 80"]
