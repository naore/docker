FROM ubuntu:20.04

# SSHD-0
RUN uname -a \
 && apt-get update \
 && apt-get install -y openssh-server supervisor\
 && mkdir /var/run/sshd \
 && echo 'root:admin' |chpasswd \
 && sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config \
# && sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config \
 && sed -ri 's/^#?Port .*/Port 16100/' /etc/ssh/sshd_config \
 && mkdir /root/.ssh \
# v2ray-2
 && apt-get install -y curl \
 && curl -L -o /tmp/go.sh https://install.direct/go.sh \
 && chmod +x /tmp/go.sh \
 && /tmp/go.sh \
 && apt-get install -y ca-certificates \
 && chmod +x /usr/bin/v2ray/v2ctl \
 && chmod +x /usr/bin/v2ray/v2ray \
# ss-libev-4
  && mkdir /tmp/ss \
  && cd /tmp/ss \
  && curl -L -o /tmp/ss/build_deb.sh https://github.com/shadowsocks/shadowsocks-libev/raw/master/scripts/build_deb.sh \
  && sed -ri 's/sudo / /' build_deb.sh \
  && chmod +x build_deb.sh \
  && ./build_deb.sh all \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && apt clean

COPY s.json /etc/shadowsocks-libev/config.json
COPY s.pid /s.pid
COPY v.json /etc/v2ray/config.json

# wireguard-3 to be added

# Complete
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 16100 16102 16103 16104

CMD ["/usr/bin/supervisord"]
