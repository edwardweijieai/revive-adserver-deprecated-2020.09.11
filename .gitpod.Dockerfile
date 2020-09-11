FROM krish512/revive:5.0.2

USER root

RUN apt-get update 
RUN apt-get install apache2 mysql-server-5.6 php5 php5-mysql unzip 
RUN wget http://download.revive-adserver.com/revive-adserver-3.1.0.zip

RUN unzip revive-adserver-3.1.0.zip

RUN mv revive-adserver-3.1.0 /var/www/html/adserver
