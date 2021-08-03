
FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install apache2 -y
COPY ./website/index.php /var/www/html

CMD ["apache2ctl", "-DFOREGROUND"]

EXPOSE 80
