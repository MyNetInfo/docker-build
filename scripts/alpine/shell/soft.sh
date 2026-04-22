#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### soft"

apk add screen 
apk add sudo
apk add psmisc
apk add vim
apk add rsync
apk add curl
apk add wget
apk add unzip
apk add openssh
apk add iputils-ping
apk add net-tools
apk add subversion
