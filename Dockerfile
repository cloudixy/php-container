FROM php:8.1

LABEL maintainer="avsectimotej1@gmail.com"

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN apt-get update -y && apt-get install -y zip unzip libzip-dev && docker-php-ext-install zip
