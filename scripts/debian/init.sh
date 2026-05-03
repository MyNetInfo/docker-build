#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### init"

mkdir -p /root/.ssh
mkdir -p /root/shell

# 下载 - 该自增编号来自动发布: 002
wget -O /root/.ssh/authorized_keys https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/authorized_keys
wget -O /root/shell/install.sh     https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/debian/shell/install.sh

# 权限
chmod -R 0700 /root/*.sh
chmod -R 0700 /root/shell/*.sh
chmod -R 0400 /root/.ssh/authorized_keys

# 初始化
/root/shell/install.sh

# 清理
apt-get -y clean
