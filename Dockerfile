FROM apache
RUN apt-get update
RUN apt-get install -y apache2
EXPOSE 80
VOLUME /var/www/htm;/
COPY ./index.html /var/www/html/
CMD ["/user/sbin/apache2ctl","-D", "FOREGROUND"]
