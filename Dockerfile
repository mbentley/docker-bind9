FROM debian:jessie
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apt-get update &&\
  DEBIAN_FRONTEND=noninteractive apt-get install -y bind9 &&\
  mkdir /var/log/bind && chown -R bind:bind /var/log/bind

COPY named.conf* /etc/bind/

EXPOSE 53 53/udp
CMD ["/usr/sbin/named","-c","/etc/bind/named.conf","-f","-u","bind"]
