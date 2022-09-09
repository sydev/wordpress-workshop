FROM wordpress:6.0-php8.1 as composer-artifacts
# base image declares /var/www/html as VOLUME we can't modify contents with RUN

WORKDIR /build

ENV COMPOSER_ALLOW_SUPERUSER=1

COPY --from=composer /usr/bin/composer /usr/local/bin/composer

COPY . .

RUN composer install --no-interaction && ls -al

FROM wordpress:6.0-php8.1

WORKDIR /var/www/html/

COPY --from=composer-artifacts /build /var/www/html/
