FROM alpine:3.23

WORKDIR /root
COPY .  /root

RUN apk update \
    && apk add screen sudo psmisc vim rsync curl wget unzip openssh iputils-ping net-tools \
    && apk cache clean \
    && sed -i "/MaxStartups/d"                     /etc/ssh/sshd_config && echo "MaxStartups 64"                      >> /etc/ssh/sshd_config \
    && sed -i "/ClientAliveInterval/d"             /etc/ssh/sshd_config && echo "ClientAliveInterval 10"              >> /etc/ssh/sshd_config \
    && sed -i "/ClientAliveCountMax/d"             /etc/ssh/sshd_config && echo "ClientAliveCountMax 6"               >> /etc/ssh/sshd_config \
    && sed -i "/PermitRootLogin/d"                 /etc/ssh/sshd_config && echo "PermitRootLogin yes"                 >> /etc/ssh/sshd_config \
    && sed -i "/PasswordAuthentication/d"          /etc/ssh/sshd_config && echo "PasswordAuthentication yes"          >> /etc/ssh/sshd_config \
    && sed -i "/ChallengeResponseAuthentication/d" /etc/ssh/sshd_config && echo "ChallengeResponseAuthentication yes" >> /etc/ssh/sshd_config \
    && sed -i "/PubkeyAuthentication/d"            /etc/ssh/sshd_config && echo "PubkeyAuthentication yes"            >> /etc/ssh/sshd_config
    && wget -O /root/init.sh https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/init.sh && chmod -R 0700 /root/*.sh && /root/init.sh

CMD ["/root/shell/start.sh"]
