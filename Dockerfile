FROM alpine

MAINTAINER Pietro Pizzo <pietro.pizzo@gmail.com>

WORKDIR /doc

RUN apk --no-cache add openjdk7-jre libreoffice
RUN apk --no-cache add ttf-freefont
