
# 如果是 windows 可将以下代码保存为 alpine.bat 文件后执行

set RunParams= -itd --restart=always --cpus=0.2 --memory=256m --network LdMain -v /etc/localtime:/etc/localtime:ro

docker rm -f Alpine322
docker rm -f Alpine323

docker run %RunParams% --name Alpine322 --hostname Alpine322 -v E:/DockerData/Alpine322.tmp:/tmp -p 2260:22/tcp mynetinfo/ubuntu1804:1.0
docker run %RunParams% --name Alpine323 --hostname Alpine323 -v E:/DockerData/Alpine323.tmp:/tmp -p 2261:22/tcp mynetinfo/ubuntu2004:1.0
