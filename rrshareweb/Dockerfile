FROM alpine as cache

ADD http://appdown.rrys.tv/rrshareweb_linux_2.20.tar.gz /rrshareweb.tar.gz
RUN tar -xzf /rrshareweb.tar.gz

FROM alpine

ENV GLIBC_VERSION=2.31-r0 TZ=Asia/Shanghai

COPY --from=cache /rrshareweb/* /rrshareweb

ADD https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk glibc-${GLIBC_VERSION}.apk
ADD https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-bin-${GLIBC_VERSION}.apk glibc-bin-${GLIBC_VERSION}.apk
 
RUN chmod +x /rrshareweb/rrshareweb && \
    apk add --no-cache libstdc++ && \
    apk add --allow-untrusted glibc-${GLIBC_VERSION}.apk glibc-bin-${GLIBC_VERSION}.apk

EXPOSE 3001 6714 30210

VOLUME /opt/work/rrshareweb/data

ENTRYPOINT [ "/rrshareweb/rrshareweb" ]
