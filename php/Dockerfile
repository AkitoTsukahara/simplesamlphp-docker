FROM php:8.1-fpm-alpine

# 必要なPHP拡張機能をインストール
RUN docker-php-ext-install mysqli pdo pdo_mysql

# SimpleSAMLphpをダウンロードして設定
# 注意: SimpleSAMLphpのバージョンは適宜確認してください
RUN curl -sSL https://github.com/simplesamlphp/simplesamlphp/releases/download/v2.1.1/simplesamlphp-2.1.1-full.tar.gz | tar xz -C /var/www/html
RUN mv /var/www/hmtl/simplesamlphp-2.1.1 /var/www/html/simplesamlphp

# SimpleSAMLphpの設定ファイルをコピーする場合はここに追加
# COPY config.php /var/www/simplesamlphp/config/config.php
# COPY authsources.php /var/www/simplesamlphp/config/authsources.php

WORKDIR /var/www/html/simplesamlphp