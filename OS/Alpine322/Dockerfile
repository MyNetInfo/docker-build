FROM alpine:3.22

WORKDIR /data
COPY .  /data

ENV TZ=Asia/Shanghai

RUN mkdir -p /root/.ssh \
    && apk update \
    && apk add sudo bash curl wget openssh \
    && ssh-keygen -A \
    && apk cache clean \
    && wget -O /root/init.sh https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/alpine/init.sh && chmod -R 0700 /root/*.sh && /root/init.sh

CMD ["/root/shell/start.sh"]
