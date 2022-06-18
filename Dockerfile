# FROM php:7.4-cli
# COPY . /usr/src/myapp
# WORKDIR /usr/src/myapp
# CMD [ "php", "./index.php" ]

FROM php:7.4-apache
RUN docker-php-ext-install mysqli

# RUN docker-php-source extract \
#     # igbinary
#     && mkdir -p /usr/src/php/ext/igbinary \
#     &&  curl -fsSL https://github.com/igbinary/igbinary/archive/$EXT_IGBINARY_VERSION.tar.gz | tar xvz -C /usr/src/php/ext/igbinary --strip 1 \
#     && docker-php-ext-install igbinary \
#     # redis
#     && mkdir -p /usr/src/php/ext/redis \
#     && curl -fsSL https://github.com/phpredis/phpredis/archive/$EXT_REDIS_VERSION.tar.gz | tar xvz -C /usr/src/php/ext/redis --strip 1 \
#     && docker-php-ext-configure redis --enable-redis-igbinary \
#     && docker-php-ext-install redis \
#     # cleanup
#     && docker-php-source delete