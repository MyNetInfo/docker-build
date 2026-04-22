#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### ssh"

# 优化.SSH
sed -i "/PermitTunnel/d"       /etc/ssh/sshd_config && echo "PermitTunnel yes"       >> /etc/ssh/sshd_config
sed -i "/GatewayPorts/d"       /etc/ssh/sshd_config && echo "GatewayPorts yes"       >> /etc/ssh/sshd_config
sed -i "/AllowTcpForwarding/d" /etc/ssh/sshd_config && echo "AllowTcpForwarding yes" >> /etc/ssh/sshd_config

# 优化.SSH
sed -i "/MaxStartups/d"                     /etc/ssh/sshd_config && echo "MaxStartups 64"                      >> /etc/ssh/sshd_config
sed -i "/ClientAliveInterval/d"             /etc/ssh/sshd_config && echo "ClientAliveInterval 10"              >> /etc/ssh/sshd_config
sed -i "/ClientAliveCountMax/d"             /etc/ssh/sshd_config && echo "ClientAliveCountMax 6"               >> /etc/ssh/sshd_config
sed -i "/PermitRootLogin/d"                 /etc/ssh/sshd_config && echo "PermitRootLogin yes"                 >> /etc/ssh/sshd_config
sed -i "/PasswordAuthentication/d"          /etc/ssh/sshd_config && echo "PasswordAuthentication no"           >> /etc/ssh/sshd_config
sed -i "/ChallengeResponseAuthentication/d" /etc/ssh/sshd_config && echo "ChallengeResponseAuthentication yes" >> /etc/ssh/sshd_config
sed -i "/PubkeyAuthentication/d"            /etc/ssh/sshd_config && echo "PubkeyAuthentication yes"            >> /etc/ssh/sshd_config
