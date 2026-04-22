#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### install"

# 软件
apt-get -y install net-tools
apt-get -y install unzip
apt-get -y install sshfs
apt-get -y install subversion
apt-get -y install git
