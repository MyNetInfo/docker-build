FROM debian:12

WORKDIR /root
COPY .  /root

RUN apt-get update \
    && apt-get -y install openssh-server \
    && rm -rf /root/Dockerfile \
    && chmod -R 0700 /root/*.sh \
    && echo "root:12345678" | chpasswd

CMD ["/root/start.sh"]
