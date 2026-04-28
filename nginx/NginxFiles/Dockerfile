FROM nginx:1.28-alpine

ENV TZ=Asia/Shanghai

COPY default.conf /aaa/
COPY Stream/      /aaa/Stream/
COPY StreamConf/  /aaa/StreamConf/

COPY default.conf /etc/nginx/conf.d/
COPY Stream/      /etc/nginx/conf.d/Stream/
COPY StreamConf/  /etc/nginx/conf.d/StreamConf/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache iputils net-tools \
    && apk cache clean \
    && sed -i "s/XXX/XXX/g" /etc/nginx/nginx.conf \
    && sed -i "s/\/run\/nginx.pid/\/tmp\/nginx.pid/g" /etc/nginx/nginx.conf \
    && sed -i "s/\/var\/log\/nginx\/error.log/\/tmp\/error.log/g" /etc/nginx/nginx.conf \
    && sed -i "s/\/var\/log\/nginx\/access.log/\/tmp\/access.log/g" /etc/nginx/nginx.conf \
    && echo "include /etc/nginx/conf.d/Stream/stream.conf;" >> /etc/nginx/nginx.conf \
    && ping -c 6 baidu.com
