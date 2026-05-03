
### DockerHub 地址
https://hub.docker.com/u/mynetinfo

### 操作系统
1、进行了 upgrade 更新 <br>
2、默认启动了 svn 服务 (3690端口), 容器只要映射了 3690 端口就可以连接 svn 服务 <br>
3、启动 sshd 服务, 并配置了远程访问, 容器只要映射了 22 端口就可以远程连接 ssh 服务 <br>

开机启动脚本如下 https://github.com/MyNetInfo/docker-build/tree/main/scripts/debian/shell <br>

### 其中 80-fpm、80-fpm 包含了以下扩展, 默认端口 9000
apt-get install -y iputils-ping zlib1g-dev git <br>
apt-get install -y libcurl4-openssl-dev libzip-dev unzip <br>
apt-get install -y libmemcached-dev <br>
apt-get install -y libpq-dev libssl-dev <br>
apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev <br>
docker-php-ext-install curl zip <br>
docker-php-ext-install mysqli pgsql pdo_mysql pdo_pgsql <br>
pecl channel-update pecl.php.net <br>
pecl install redis    && docker-php-ext-enable redis <br>
pecl install memcache && docker-php-ext-enable memcache <br>
pecl install mongodb  && docker-php-ext-enable mongodb <br>
docker-php-ext-configure gd --with-freetype --with-jpeg && docker-php-ext-install -j$(nproc) gd <br>

### 更多用法请看 docs 目录下的说明文档
https://github.com/MyNetInfo/docker-build/tree/main/docs

