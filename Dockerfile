FROM composer/composer

RUN mkdir -p /data
VOLUME /data

WORKDIR /data/www

ENTRYPOINT ["composer"]
CMD ["--help"]