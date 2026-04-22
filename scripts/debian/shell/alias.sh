#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### alias"

# 命令别名
sed -i "/alias ll/d"   /etc/profile && echo "alias ll='ls -la'" >> /etc/profile
sed -i "/alias df/d"   /etc/profile && echo "alias df='df -h'"  >> /etc/profile
sed -i "/alias free/d" /etc/profile && echo "alias free='while true; do clear; free -h; sleep 1; done'" >> /etc/profile
sed -i "/alias pse/d"  /etc/profile && echo "alias pse='clear && ps -ef | sort -k8'" >> /etc/profile
sed -i "/alias psv/d"  /etc/profile && echo "alias psv='clear && ps -ef | sort -k8 | grep -v kworker | grep -v sshd | grep -v scsi_eh | grep -v /sbin/init | grep -v /cron | grep -v containerd | grep -v docker | grep -v vscode-server | grep -v ping | grep -v Ping'" >> /etc/profile

# 命令别名
sed -i "/alias ll/d"   /root/.bashrc && echo "alias ll='ls -la'" >> /root/.bashrc
sed -i "/alias df/d"   /root/.bashrc && echo "alias df='df -h'"  >> /root/.bashrc
sed -i "/alias free/d" /root/.bashrc && echo "alias free='while true; do clear; free -h; sleep 1; done'" >> /root/.bashrc
sed -i "/alias pse/d"  /root/.bashrc && echo "alias pse='clear && ps -ef | sort -k8'" >> /root/.bashrc
sed -i "/alias psv/d"  /root/.bashrc && echo "alias psv='clear && ps -ef | sort -k8 | grep -v kworker | grep -v sshd | grep -v scsi_eh | grep -v /sbin/init | grep -v /cron | grep -v containerd | grep -v docker | grep -v vscode-server | grep -v ping | grep -v Ping'" >> /root/.bashrc

# 命令别名
sed -i "/alias ll/d"   /root/.profile && echo "alias ll='ls -la'" >> /root/.profile
sed -i "/alias df/d"   /root/.profile && echo "alias df='df -h'"  >> /root/.profile
sed -i "/alias free/d" /root/.profile && echo "alias free='while true; do clear; free -h; sleep 1; done'" >> /root/.profile
sed -i "/alias pse/d"  /root/.profile && echo "alias pse='clear && ps -ef | sort -k8'" >> /root/.profile
sed -i "/alias psv/d"  /root/.profile && echo "alias psv='clear && ps -ef | sort -k8 | grep -v kworker | grep -v sshd | grep -v scsi_eh | grep -v /sbin/init | grep -v /cron | grep -v containerd | grep -v docker | grep -v vscode-server | grep -v ping | grep -v Ping'" >> /root/.profile
