FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN (apk --update add bind && rm -rf /var/cache/apk/*)

#RUN ln -s /etc/bind/named.conf.recursive /etc/bind/named.conf

EXPOSE 53 53/udp
CMD ["/usr/sbin/named","-c","/etc/bind/named.conf.recursive","-f","-u","named","-g"]
