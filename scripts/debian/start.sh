#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### start"

while true; do
    echo "`date +%Y-%m-%d` `date +%H:%M:%S` ${HostName} .." > /tmp/start.log
    sleep 3
done
