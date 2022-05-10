FROM ubuntu
RUN apt-get update
RUN apt-get install git-core -y
RUN apt-get install bind9 -y 
RUN apt-get install apache2 -y
RUN git clone https://github.com/laura-152020/trabajofinal.git /home/archivos/

RUN mv /etc/bind/named.conf /etc/bind/named.conf.old
RUN mv /home/archivos/named.conf /etc/bind/
RUN mv /home/archivos/zones/* /var/cache/bind/
RUN mv /home/archivos/index.html /var/www/html/ 
RUN mv /home/archivos/imagenes/ /var/www/html/

EXPOSE 80
EXPOSE 53

