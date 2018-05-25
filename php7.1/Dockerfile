FROM php:7.1-fpm

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

RUN echo "Install Redis" \
    && git clone https://github.com/phpredis/phpredis --depth=1 && \
    cd phpredis && \
    phpize && \
    ./configure && \
    make && \
    make install

RUN echo "Install Swoole" \
    && git clone https://github.com/swoole/swoole-src --depth=1 && \
    cd swoole-src && \
    phpize && \
    ./configure && \
    make && \
    make install

RUN echo "Install ssh2" \
    && wget https://www.libssh2.org/download/libssh2-1.8.0.tar.gz && wget http://pecl.php.net/get/ssh2-1.0.tgz \
    && tar vxzf libssh2-1.8.0.tar.gz && tar vxzf ssh2-1.0.tgz \
    && cd libssh2-1.8.0 && ./configure \
    && make && make install \
    && cd ../ssh2-1.0 && phpize && ./configure --with-ssh2 \
    && make && make install

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

WORKDIR /var/www/local.dev

CMD ["php-fpm"]
