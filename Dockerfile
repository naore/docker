FROM ubuntu:18.04

RUN uname -a

RUN apt-get update

# SSHD-0

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN echo 'root:admin' |chpasswd

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/^#?Port .*/Port 16100/' /etc/ssh/sshd_config

RUN mkdir /root/.ssh

# ss-libev-4

RUN apt-get install -y shadowsocks-libev
COPY s.json /etc/shadowsocks-libev/config.json

# v2ray-2

RUN apt-get install -y curl
RUN rm /bin/sh
RUN ln -s /bin/bash /bin/sh
RUN bash <(curl -L -s https://install.direct/go.sh)
COPY v.json /etc/v2ray/config.json

# wireguard-3

# Complete

RUN apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 16100
EXPOSE 16102
EXPOSE 16103
EXPOSE 16104

CMD exec bash /root/run.sh
