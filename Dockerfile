FROM php:7.2.15-fpm-alpine3.9
LABEL Maintainer="Matias Flores <matius77@gmail.com>" \
      Description="Contenedor con Nginx 1.12 & PHP-FPM 7.2.15 basado en Linux Alpine 3.9."

# Install packages
RUN apk --no-cache add \
	nginx \
	supervisor \
	curl \
	openssl \
	wget \
	git

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- \
        --install-dir=/usr/local/bin \
        --filename=composer
