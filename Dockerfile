FROM php:8.2-apache-bookworm
ARG APPVER
WORKDIR /var/www/html
COPY app.php index.php
RUN echo "SetEnv APP_VERSION ${APPVER}" >> /etc/apache2/conf-enabled/environment.conf
EXPOSE 80
