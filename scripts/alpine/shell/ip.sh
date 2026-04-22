#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`" && clear
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### IP"

ifconfig

echo ""; curl -4 ifconfig.me; echo ""
echo ""; curl -6 ifconfig.me; echo ""
