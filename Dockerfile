FROM php:7.0-fpm
MAINTAINER Erick Rojas <erick@theredlabs.com>
COPY ["etc/apt/sources.list", "/etc/apt/sources.list"]
RUN apt-get update
RUN apt-get install -y libmemcached-dev libmagickwand-dev libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev libssl-dev libsasl2-dev zlib1g-dev libssl-doc
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install iconv mcrypt gd pdo_mysql mysqli
RUN pecl install mongodb
RUN docker-php-ext-enable mongodb
RUN pecl install xdebug-beta
RUN docker-php-ext-enable xdebug