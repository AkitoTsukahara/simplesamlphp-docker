FROM php:8.3-fpm-alpine

# 必要なパッケージのインストール
RUN apk add --update --no-cache \
    openssl \
    curl

# 必要なPHPの拡張をインストール
RUN docker-php-ext-install pdo pdo_mysql

RUN curl -sSL https://github.com/simplesamlphp/simplesamlphp/releases/download/v2.1.1/simplesamlphp-2.1.1-full.tar.gz | tar xz -C /var/www
RUN mv /var/www/simplesamlphp-* /var/www/simplesamlphp

# SimpleSAMLphpとその設定ファイルをコピー
# simplesamlphpディレクトリに必要なファイルが含まれていることを前提としています
#COPY server/simplesamlphp/ /var/www/simplesamlphp
#COPY server/html/ /var/www/html

