FROM ubuntu:16.04

ENV PACKAGE_NAME jsonformatter
ENV PACKAGE_VERSION 0.1

RUN apt-get update
RUN apt-get install -y ruby-dev build-essential

RUN gem install fpm

ENTRYPOINT fpm --package /package/rover.deb -v ${PACKAGE_VERSION} -t deb -n ${PACKAGE_NAME} -s dir /package/jsonformatter=/usr/bin/
