FROM phpdockerio/php74-fpm
RUN apt-get update && apt-get install -y composer
RUN apt-get install -y php7.4-mysql php7.4-common php7.4-bcmath openssl php7.4-json php7.4-mbstring
RUN sed -i -e 's/^;\(extensio.*pdo_mysql\)/\1/' /etc/php/7.4/fpm/php.ini 
RUN echo 'umask a+w' >> /root/.bashrc