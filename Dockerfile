FROM alpine:latest
MAINTAINER Pryz <ju dot pryz at gmail dot com>

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing/" \
  >> /etc/apk/repositories

RUN apk upgrade --update
RUN apk add --update strace curl lsof htop tcpdump dstat

CMD [ "sh" ]
