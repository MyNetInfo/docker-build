#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### install"

mkdir -p /root/.ssh
mkdir -p /root/shell

wget -O /root/shell/alias.sh https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/shell/alias.sh
wget -O /root/ip.sh          https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/shell/ip.sh
wget -O /root/shell/soft.sh  https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/shell/soft.sh
wget -O /root/shell/ssh.sh   https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/shell/ssh.sh
wget -O /root/shell/start.sh https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/shell/start.sh
chmod -R 0700 /root/*.sh
chmod -R 0700 /root/shell/*.sh

# 密钥
wget -O /root/.ssh/authorized_keys https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/authorized_keys
chmod -R 0400 /root/.ssh/authorized_keys

# 初始化
/root/shell/soft.sh
/root/shell/ssh.sh
/root/shell/alias.sh
