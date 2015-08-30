FROM debian:jessie
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y bind9

COPY named.conf.options /etc/bind/named.conf.options

EXPOSE 53 53/udp
CMD ["/usr/sbin/named","-c","/etc/bind/named.conf","-f"]
