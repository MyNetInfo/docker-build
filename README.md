
### DockerHub 地址
https://hub.docker.com/u/mynetinfo

### 默认端口: 9000

### 其中 80-fpm、80-fpm 包含了以下扩展
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
