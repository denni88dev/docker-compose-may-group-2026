FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noniniteractive
RUN apt update && apt install -y apache2 \
                 ghostscript \
                 libapache2-mod-php \
                 mysql-server \
                 php \
                 php-bcmath \
                 php-curl \
                 php-imagick \
                 php-intl \
                 php-json \
                 php-mbstring \
                 php-mysql \
                 php-xml \
                 php-zip 
WORKDIR /var/www/html
RUN rm -r index.html
ADD https://wordpress.org/latest.tar.gz .
RUN tar -zxf latest.tar.gz && \
    cp -r wordpress/* . && \
    rm -rf latest.tar.gz wordpress   
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
