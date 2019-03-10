FROM       ubuntu:18.04
MAINTAINER Naore "https://github.com/naore"

RUN apt update

RUN apt install -y openssh-server
RUN mkdir /var/run/sshd

RUN echo 'root:admin' |chpasswd

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh

RUN apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 22

CMD    ["/usr/sbin/sshd", "-D"]
