FROM php:7.2-fpm

MAINTAINER Fukotaku <contact@simon-micheneau.fr>

RUN apt-get update -yqq
RUN apt-get update && apt-get install -y \
        apt-utils \
        git \
        wget \
        curl \
        zip \
        unzip \
        make \
        libssh2-1-dev \
        libssh2-1 \
        libmcrypt-dev \
        libpq-dev \
        libicu-dev \
        libvpx-dev \
        libjpeg-dev \
        libpng-dev \
        libxpm-dev \
        zlib1g-dev \
        libfreetype6-dev \
        libxml2-dev \
        libexpat1-dev \
        libbz2-dev \
        libgmp3-dev \
        libldap2-dev \
        unixodbc-dev \
        libsqlite3-dev \
        libaspell-dev \
        libsnmp-dev \
        libpcre3-dev \
        libtidy-dev \
        libsqlite3-dev \
        libssl-dev \
        libcurl3-dev \
        libxml2-dev \
        libzzip-dev \
        default-libmysqlclient-dev \
        mysql-client

RUN docker-php-ext-install mbstring curl json intl gd xml xmlrpc zip bz2 opcache pdo_mysql pdo iconv mysqli pdo_sqlite phar ftp hash session simplexml tokenizer \
&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
&& docker-php-ext-install gd

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

WORKDIR /var/www/local.dev

CMD ["php-fpm"]
