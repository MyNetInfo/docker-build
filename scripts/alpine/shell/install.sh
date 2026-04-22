#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### install"

wget -O /root/.ssh/authorized_keys https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/authorized_keys
wget -O /root/ip.sh                https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/alpine/shell/ip.sh
wget -O /root/shell/ssh.sh         https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/alpine/shell/ssh.sh
wget -O /root/shell/alias.sh       https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/alpine/shell/alias.sh
wget -O /root/shell/soft.sh        https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/alpine/shell/soft.sh
wget -O /root/shell/start.sh       https://raw.githubusercontent.com/MyNetInfo/docker-build/refs/heads/main/scripts/alpine/shell/start.sh

# 权限
chmod -R 0700 /root/*.sh
chmod -R 0700 /root/shell/*.sh
chmod -R 0400 /root/.ssh/authorized_keys

# 初始化
/root/shell/ssh.sh
/root/shell/alias.sh
/root/shell/soft.sh

# 设置默认 shell
sh -s /bin/bash
chsh -s /bin/bash
