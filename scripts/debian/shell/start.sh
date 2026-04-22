#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### start"

# 权限
chmod -R 0700      /root/*.sh
chown -R root:root /root/*.sh

# 权限
chmod -R 0700      /root/shell
chown -R root:root /root/shell

# 权限
chmod -R 0700      /root/scripts
chown -R root:root /root/scripts

# 启动服务
/etc/init.d/ssh start
/etc/init.d/ssh restart

# svnserve -d -r /data/SvnData
# /usr/bin/svnserve -d -r /data/SvnData

while true; do
    echo "`date +%Y-%m-%d` `date +%H:%M:%S` ${HostName} .." > /tmp/start.log
    netstat -tunlp | sort -n -k4.2 | grep "LISTEN" >> /tmp/start.log
    sleep 3
done
