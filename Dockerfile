FROM ubuntu:18.04

# SSHD-0

RUN uname -a \
 && apt-get update \
 && apt-get install -y openssh-server \
 && mkdir /var/run/sshd \
 && echo 'root:admin' |chpasswd \
 && sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config && \
    sed -ri 's/^#?Port .*/Port 16100/' /etc/ssh/sshd_config \
 && mkdir /root/.ssh

# ss-libev-4

RUN apt-get install -y shadowsocks-libev
COPY s.json /etc/shadowsocks-libev/config.json
COPY s.pid /s.pid

# v2ray-2

RUN apt-get install -y curl \
 && curl -L -o /tmp/go.sh https://install.direct/go.sh \
 && chmod +x /tmp/go.sh \
 && /tmp/go.sh \
 && set -ex && \
    apt-get install -y ca-certificates && \
#    mkdir /var/log/v2ray/ &&\
    chmod +x /usr/bin/v2ray/v2ctl && \
    chmod +x /usr/bin/v2ray/v2ray

COPY v.json /etc/v2ray/config.json

# wireguard-3

# Complete

COPY run.sh /root/run.sh
RUN chmod +x /root/run.sh \
 && rm -rf /bin/sh \
 && ln -s /bin/bash /bin/sh \
 && apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 16100 16102 16103 16104

CMD ["/bin/sh", "/root/run.sh"]
