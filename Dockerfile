FROM alpine

MAINTAINER Pietro Pizzo <pietro.pizzo@gmail.com>

WORKDIR /doc

RUN apk --no-cache add openjdk8-jre libreoffice
