FROM alpine

ADD http://appdown.rrys.tv/rrshareweb_linux_2.20.tar.gz /rrshareweb.tar.gz

RUN tar -xzf /rrshareweb.tar.gz && rm /rrshareweb.tar.gz

VOLUME ["/opt/work/rrshareweb"]
EXPOSE 3001

ENTRYPOINT [ "/rrshareweb/rrshareweb" ]
