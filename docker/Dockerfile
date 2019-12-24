FROM debian:stretch
LABEL maintainer="Xebec Developers <dev@xebec.site>"
LABEL description="Dockerised XebecCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
