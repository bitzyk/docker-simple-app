FROM ubuntu

ENV DEBCONF_NONINTERACTIVE_SEEN true
RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get -y install systemctl

RUN apt-get -y install php

COPY index.php /var/www/html/docker-simple-app/index.php
COPY docker/000-default.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80
CMD apachectl -D FOREGROUND