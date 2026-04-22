#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### start"

/etc/init.d/ssh start
/etc/init.d/ssh restart

# svnserve -d -r /data/SvnData
# /usr/bin/svnserve -d -r /data/SvnData

curl -4 ifconfig.me
curl -6 ifconfig.me

while true; do
    echo "`date +%Y-%m-%d` `date +%H:%M:%S` ${HostName} .." > /tmp/start.log
    netstat -tunlp | sort -n -k4.2 | grep "LISTEN" >> /tmp/start.log
    sleep 3
done
