#!/bin/bash
source /etc/profile && HostName="`cat /etc/hostname`"
echo "################################################### `date +%Y-%m-%d` `date +%H:%M:%S` ################################################### start"

mkdir -p /data/SvnData

chmod -R 0700      /root/*.sh
chmod -R 0700      /root/shell
chmod -R 0700      /root/scripts

chown -R root:root /root/*.sh
chown -R root:root /root/shell
chown -R root:root /root/scripts

# 启动服务
/etc/init.d/ssh start
/etc/init.d/ssh restart

# 启动服务
svnserve -d -r /data/SvnData
/usr/bin/svnserve -d -r /data/SvnData

# 开机脚本 (默认没有这个文件,后续自行补充)
/root/scripts/start.sh

while true; do
    echo "`date +%Y-%m-%d` `date +%H:%M:%S` ${HostName} .." > /tmp/start.log
    netstat -tunlp | sort -n -k4.2 | grep "LISTEN" >> /tmp/start.log
    sleep 3
done
