#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### install"

# 下载
wget -O /root/ip.sh          https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/ip.sh
wget -O /root/shell/alias.sh https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/alias.sh

# 权限
chmod -R 0700 /root/*.sh
chmod -R 0700 /root/shell/*.sh
chmod -R 0400 /root/.ssh/authorized_keys

# 软件
apt-get -y install net-tools
apt-get -y install unzip
apt-get -y install sshfs
apt-get -y install subversion
apt-get -y install git
