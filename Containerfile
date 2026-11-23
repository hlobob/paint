FROM registry.access.redhat.com/ubi9/httpd-24:1

EXPOSE 8080

RUN mv /etc/httpd/conf.d/ssl.conf /etc/httpd/conf.d/ssl.conf.disabled

ADD --chown=1001:1001 paint.tar /var/www/html/

CMD ["httpd", "-D", "FOREGROUND"]


