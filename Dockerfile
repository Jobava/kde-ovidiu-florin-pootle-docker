## -*- docker-imag-name: "pootle" -*-
FROM ubuntu:14.04
MAINTAINER Ovidiu-Florin BOGDAN "ovidiu.b13@gmail.com"
RUN apt-get -qq update
RUN apt-get -qq -y upgrade
RUN apt-get install -y python python-setuptools libxml2 libxml2-dev build-essential python-dev libxslt-dev zlib1g-dev
RUN easy_install pip
RUN pip install virtualenv
RUN virtualenv /var/www/pootle/env
RUN . /var/www/pootle/env/bin/activate
RUN pip install "Pootle==2.5.1.3"
RUN pootle --version
