
# 如果是 windows 可将以下代码保存为 debian.bat 文件后执行

docker rm -f LdDebian11
docker rm -f LdDebian12
docker rm -f LdDebian13

set RunParams= -itd --restart=always --cpus=0.2 --memory=256m --network LdMain -v /etc/localtime:/etc/localtime:ro

docker run %RunParams% --name LdDebian11 --hostname LdDebian11 -v E:/DockerData/Debian11.tmp:/tmp -p 2201:22/tcp mynetinfo/debian11:1.0
docker run %RunParams% --name LdDebian12 --hostname LdDebian12 -v E:/DockerData/Debian12.tmp:/tmp -p 2202:22/tcp mynetinfo/debian12:1.0
docker run %RunParams% --name LdDebian13 --hostname LdDebian13 -v E:/DockerData/Debian13.tmp:/tmp -p 2203:22/tcp mynetinfo/debian13:1.0
