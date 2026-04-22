#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### start"

/etc/init.d/ssh start

# svnserve -d -r /data/SvnData

# 备份 (保险)
# /etc/init.d/ssh restart
# /usr/bin/svnserve -d -r /data/SvnData

while true; do
    echo "`date +%Y-%m-%d` `date +%H:%M:%S` ${HostName} .." > /tmp/start.log
    netstat -tunlp | sort -n -k4.2 | grep "LISTEN" > /tmp/start.log
    sleep 3
done
