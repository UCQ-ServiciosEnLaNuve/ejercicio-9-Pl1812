FROM php:7.2-fpm

RUN apt-get update && apt-get isntall -y \
  git\
  curl\
  libpng-dev \
  lisboning-dev \
  libzip-dev \
  libpq-dev \
  zip\
  unzip

  RUN docker-php-ext-install mysqli pdo pdo_mysql mbstring exif pcntl bcmath 

  COPY --from=composer:2.8 /usr/bincomposer usr/bin/composer 


  WORKDIR /var/www

