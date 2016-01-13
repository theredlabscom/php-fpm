*last update: 2015-01-13*

# PHP Docker Container

This is a docker image based on the official [PHP docker container](https://hub.docker.com/_/php/) 

## Usage

Currently the following tags are available:

* 7.0 (latest)
* 5.6
* 5.5

So basically, you only have to run a docker container based on this image, mapping your application folder to /var/www/html like this:

	docker run -d -v <my_app_path>:/var/www/html theredlabs/php-fpm:[<tag>]

Docker will download and extract the required images, then it will build the modules available for the tag (version) you specified.  If you don't select a tag it will use the latest version by default.

## Modules available per tag

### 7.0

* gd
* imagick
* mysqli
* mongodb
* pdo_mysql

### 5.6

* gd
* imagick
* mysqli
* mongodb
* memcached
* pdo_mysql
* redis

### 5.5

* gd
* imagick
* mysqli
* mongodb
* memcached
* pdo_mysql
* redis

## Custom php.ini file

In order to use a custom *php.ini* file in this docker, please include it in your project and map it to the container when running it for the first time:

	docker run -d -v <my_app_path>:/var/www/html -v <my_ini_file>:/etc/php-fpm/php.ini  theredlabs/php-fpm:[<tag>]

