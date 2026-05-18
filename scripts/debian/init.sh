#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### init"

# 下载
mkdir -p /root/shell
wget -O  /root/shell/install.sh https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/shell/install.sh

# 初始化
chmod -R 0700 /root/shell && /root/shell/install.sh

# 清理
apt-get -y clean
