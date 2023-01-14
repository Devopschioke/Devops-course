FROM ubuntu
RUN apt update
RUN apt install apache2 -y
ENTRYPOINT apachectl -D FOREGROUND
RUN apt install git -y
ADD /helloworld/ /var/www/html
