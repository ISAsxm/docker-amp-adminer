FROM php:7.3-apache

# Install sql libraries
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo pdo_mysql

# Install xdebug
RUN pecl install xdebug-2.7.2 && \
    docker-php-ext-enable xdebug