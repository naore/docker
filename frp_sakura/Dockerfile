FROM alpine

ENV VERSION="Sakura_frpc_linux_amd64"
ENV USERNAME="abc"
ENV PASSWD="abc"
ENV SID="serverid"
ENV ID="tunnelid"

RUN wget --no-check-certificate https://cdn.tcotp.cn:4443/client/${VERSION}.tar.gz  && \ 
    tar xzf ${VERSION}.tar.gz && \
    mv ${VERSION} /sakura && \
    rm -rf *.tar.gz && \
    rm -rf ${VERSION}

ENTRYPOINT ["/sakura","--su=${USERANME}","--sp=${PASSWD}","--sid=${SID}","--sc=${ID}","--disable-pause"]
