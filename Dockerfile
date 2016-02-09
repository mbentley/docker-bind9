FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apk --no-cache add bind

RUN ln -s /etc/bind/named.conf.recursive /etc/bind/named.conf

EXPOSE 53 53/udp
CMD ["/usr/sbin/named","-c","/etc/bind/named.conf","-f","-u","named","-g"]
