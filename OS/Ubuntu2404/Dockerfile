FROM ubuntu:24.04

WORKDIR /root
COPY .  /root

RUN apt-get -y clean \
    && apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y autoremove \
    && apt-get -y install curl \
    && apt-get -y install wget \
    && apt-get -y install openssh-server \
    && wget -O /root/init.sh https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/init.sh && chmod -R 0700 /root/*.sh && /root/init.sh

CMD ["/root/shell/start.sh"]

