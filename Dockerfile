FROM php:5.6-fpm
MAINTAINER Oscar Cheung <hello@oscarcheung.me>
RUN apt-get update && apt-get install -y \
    libmcrypt-dev \
 && docker-php-ext-install \
    mysqli \
    mcrypt \
 && rm -rf /var/lib/apt/lists/*
CMD ["php-fpm"]
