#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### install"

# 软件
apt-get -y install net-tools
apt-get -y install unzip
apt-get -y install sshfs
apt-get -y install subversion
apt-get -y install git

# 优化.SSH
sed -i "/PermitTunnel/d"       /etc/ssh/sshd_config && echo "PermitTunnel yes"       >> /etc/ssh/sshd_config
sed -i "/GatewayPorts/d"       /etc/ssh/sshd_config && echo "GatewayPorts yes"       >> /etc/ssh/sshd_config
sed -i "/AllowTcpForwarding/d" /etc/ssh/sshd_config && echo "AllowTcpForwarding yes" >> /etc/ssh/sshd_config

# 优化.SSH
sed -i "/MaxStartups/d"                     /etc/ssh/sshd_config && echo "MaxStartups 64"                      >> /etc/ssh/sshd_config
sed -i "/ClientAliveInterval/d"             /etc/ssh/sshd_config && echo "ClientAliveInterval 10"              >> /etc/ssh/sshd_config
sed -i "/ClientAliveCountMax/d"             /etc/ssh/sshd_config && echo "ClientAliveCountMax 6"               >> /etc/ssh/sshd_config
sed -i "/PermitRootLogin/d"                 /etc/ssh/sshd_config && echo "PermitRootLogin yes"                 >> /etc/ssh/sshd_config
sed -i "/PasswordAuthentication/d"          /etc/ssh/sshd_config && echo "PasswordAuthentication yes"          >> /etc/ssh/sshd_config
sed -i "/ChallengeResponseAuthentication/d" /etc/ssh/sshd_config && echo "ChallengeResponseAuthentication yes" >> /etc/ssh/sshd_config
sed -i "/PubkeyAuthentication/d"            /etc/ssh/sshd_config && echo "PubkeyAuthentication yes"            >> /etc/ssh/sshd_config

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
