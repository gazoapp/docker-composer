FROM composer/composer

RUN apt-get update && apt-get install -y libicu-dev
RUN docker-php-ext-install intl

RUN mkdir -p /data
VOLUME /data

WORKDIR /data/www

ENTRYPOINT ["composer"]
CMD ["--help"]