#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### init"

mkdir -p /root/shell
wget -O /root/shell/start.sh   https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/start.sh
wget -O /root/shell/install.sh https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/install.sh

# 执行脚本
chmod -R 0700 /root/shell/*.sh && /root/shell/install.sh

# 清理
apt-get -y clean
