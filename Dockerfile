FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apk --no-cache add bind

RUN (sed -i '/listen-on { 127.0.0.1; };/s/^/\/\//g' /etc/bind/named.conf.recursive &&\
  sed -i '/127.0.0.1\/32/s//0.0.0.0\/0/g' /etc/bind/named.conf.recursive)
RUN ln -s /etc/bind/named.conf.recursive /etc/bind/named.conf

EXPOSE 53 53/udp
CMD ["/usr/sbin/named","-c","/etc/bind/named.conf","-f","-u","named","-g"]
