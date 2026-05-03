
### DockerHub 地址
https://hub.docker.com/u/mynetinfo

### 默认端口
PHP8.0-fpm: 9000 <br>
PHP8.2-fpm: 9000 <br>

### 其中 80-fpm、80-fpm 包含了以下扩展
RUN apt-get update \
    && apt-get install -y iputils-ping zlib1g-dev git \
    && apt-get install -y libcurl4-openssl-dev libzip-dev unzip \
    && apt-get install -y libmemcached-dev \
    && apt-get install -y libpq-dev libssl-dev \
    && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
    && docker-php-ext-install curl zip \
    && docker-php-ext-install mysqli pgsql pdo_mysql pdo_pgsql \
    && pecl channel-update pecl.php.net \
    && pecl install redis    && docker-php-ext-enable redis \
    && pecl install memcache && docker-php-ext-enable memcache \
    && pecl install mongodb  && docker-php-ext-enable mongodb \
    && docker-php-ext-configure gd --with-freetype --with-jpeg && docker-php-ext-install -j$(nproc) gd \

### 更多用法请看 docs 目录下的说明文档
