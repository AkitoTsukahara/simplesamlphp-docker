FROM php:8.3-fpm-alpine

RUN apk update \
&& apk add nginx \
&& rm -rf /var/cache/apk/*

VOLUME ["/var/www/html", "/etc/nginx/http.d"]
EXPOSE 443

CMD php-fpm -D && nginx -g 'daemon off;'