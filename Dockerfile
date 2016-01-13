FROM php:fpm
MAINTAINER Erick Rojas <erick@theredlabs.com>
COPY ["etc/apt/sources.list", "/etc/apt/sources.list"]
