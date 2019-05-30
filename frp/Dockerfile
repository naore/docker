FROM alpine

ENV FRP_VERSION 0.27.0

RUN wget --no-check-certificate https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz && \ 
    tar xzf frp_${FRP_VERSION}_linux_amd64.tar.gz && \
    cd frp_${FRP_VERSION}_linux_amd64 && \
    mv frps /frps && \
    mv frpc /frpc && \
    mkdir /conf &&\
    mv frps.ini /conf/frps.ini && \
    mv frpc.ini /conf/frpc.ini && \
    cd .. && \
    rm -rf *.tar.gz && \
    rm -rf frp_${FRP_VERSION}_linux_amd64

WORKDIR /
# EXPOSE 80 443 6000 7000 7500
VOLUME /conf

ENTRYPOINT ["/frpc","-c","/conf/frpc.ini"]
