# Dockerfile para o serviço heskweb

FROM debian:12.5

RUN apt-get update && apt-get install -y \
    apache2 \
    php \
    php-mysql \
    zip

RUN mkdir -p /var/www/html/hesk && chmod -R 755 /var/www/html/hesk 

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
