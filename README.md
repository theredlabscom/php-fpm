*last update: 2015-01-27*

# PHP Docker Container

This is a docker image based on the official [PHP docker container](https://hub.docker.com/_/php/) with additional modules enabled.

## Usage

The only thing you have do is run a docker container based on this image, mapping your application folder to /var/www/html like this:

    docker run -d -v <my_app_path>:/var/www/html theredlabs/php-fpm:[<tag>]

Docker will download and extract the required images, with the built-in modules available for the tag (version) you specified.

If you don't select a tag it will use the latest version by default.

Currently the following tags are available:

* 7.1 (latest)
* 7.0
* 5.6
* 5.5

## Modules available per tag

### 7.0

* gd
* iconv
* mbstring
* mcrypt
* mysqli
* mongodb
* pdo_mysql
* pdo_pgsql
* pgsql
* xdebug

### 5.6

* gd
* iconv
* imagick
* mbstring
* mcrypt
* memcached
* mongodb
* mysqli
* pdo_mysql
* pdo_pgsql
* pgsql
* xdebug

### 5.5

* gd
* iconv
* imagick
* mbstring
* mcrypt
* memcached
* mongodb
* mysqli
* pdo_mysql
* pdo_pgsql
* pgsql
* xdebug

## Custom php.ini file

In order to use a custom *php.ini* file in this docker, please include it in your project and map it to the container when running it for the first time:

    docker run -d -v <my_app_path>:/var/www/html -v <my_ini_file>:/usr/local/etc/php/php.ini theredlabs/php-fpm:[<tag>]

