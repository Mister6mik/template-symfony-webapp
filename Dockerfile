ARG DOCKER_PHP_NGINX_IMAGE=webdevops/php-nginx:8.4

FROM $DOCKER_PHP_NGINX_IMAGE

################################################################################
# PACKAGE
################################################################################

RUN apt-get update -y
RUN apt-get install -y vim cron git unzip openssh-client libzip-dev zip libssh2-1-dev

################################################################################
# PHP
################################################################################

# Installer l'extension SSH2 pour PHP
RUN pecl install ssh2-1.3.1 \
    && docker-php-ext-enable ssh2

#######
RUN apt-get install -y zlib1g-dev libicu-dev libxml2-dev libxslt1-dev \
    && docker-php-ext-install bcmath zip opcache intl pdo_mysql soap xsl

################################################################################
# COMPOSER
################################################################################

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ARG DOCKER_FILE_WORKDIR=/app

WORKDIR $DOCKER_FILE_WORKDIR