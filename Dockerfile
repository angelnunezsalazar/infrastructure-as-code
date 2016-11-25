FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y install puppet-agent apache2 curl && \
    apt-get clean

EXPOSE 80-100
