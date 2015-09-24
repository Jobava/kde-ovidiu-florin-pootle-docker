## -*- docker-imag-name: "pootle" -*-
FROM debian:8
MAINTAINER Ovidiu-Florin BOGDAN "ovidiu.b13@gmail.com"
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential libxml2-dev zlib1g-dev libxslt-dev python-dev python-pip python-virtualenv
RUN virtualenv /var/www/pootle/env
RUN source /var/www/pootle/env/bin/activate
RUN pip install --upgrade pip
RUN pip install Pootle
RUN pootle --version
RUN pootle init
RUN pootle migrate
#RUN pootle setup
#RUN pootle start
