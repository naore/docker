FROM       ubuntu:18.04
MAINTAINER Naore "https://github.com/naore"

RUN apt update

# SSHD

RUN apt install -y openssh-server
RUN mkdir /var/run/sshd

RUN echo 'root:admin' |chpasswd

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh

# ss-libev-4

RUN apt install -y shadowsocks-libev
COPY s.json /etc/shadowsocks-libev/config.json

# v2ray-2

RUN apt install -y curl
RUN bash <(curl -L -s https://install.direct/go.sh)
COPY v.json /etc/v2ray/config.json

# wireguard-3

# Complete

RUN apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 22
EXPOSE 16102
EXPOSE 16103
EXPOSE 16104

CMD ["/usr/sbin/sshd", "-D"]
CMD ["ss-server", "-c", "/etc/shadowsocks-libev/config.json"]
CMD ["/usr/bin/v2ray/v2ray", "-config=/etc/v2ray/config.json"]
