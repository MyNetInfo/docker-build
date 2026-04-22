
# 如果是 windows 可将以下代码保存为 debian.bat 文件后执行

set RunParams= -itd --restart=always --cpus=0.2 --memory=256m --network LdMain -v /etc/localtime:/etc/localtime:ro

docker rm -f Ubuntu1804
docker rm -f Ubuntu2004
docker rm -f Ubuntu2204
docker rm -f Ubuntu2404

docker run %RunParams% --name Ubuntu1804 --hostname Ubuntu1804 -v E:/DockerData/Ubuntu1804.tmp:/tmp -p 2210:22/tcp mynetinfo/ubuntu1804:1.0
docker run %RunParams% --name Ubuntu2004 --hostname Ubuntu2004 -v E:/DockerData/Ubuntu2004.tmp:/tmp -p 2211:22/tcp mynetinfo/ubuntu2004:1.0
docker run %RunParams% --name Ubuntu2204 --hostname Ubuntu2204 -v E:/DockerData/Ubuntu2204.tmp:/tmp -p 2212:22/tcp mynetinfo/ubuntu2204:1.0
docker run %RunParams% --name Ubuntu2404 --hostname Ubuntu2404 -v E:/DockerData/Ubuntu2404.tmp:/tmp -p 2213:22/tcp mynetinfo/ubuntu2404:1.0
