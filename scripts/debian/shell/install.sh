#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### install"

mkdir -p /root/shell

# 下载
wget -O /root/ip.sh          https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/ip.sh
wget -O /root/shell/alias.sh https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/shell/alias.sh
wget -O /root/shell/soft.sh  https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/shell/soft.sh
wget -O /root/shell/start.sh https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/shell/start.sh

# 权限
chmod -R 0700 /root/*.sh
chmod -R 0700 /root/shell/*.sh
chmod -R 0400 /root/.ssh/authorized_keys

# 初始化
/root/shell/ssh.sh
/root/shell/alias.sh
/root/shell/soft.sh
