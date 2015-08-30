mbentley/bind9
==============

docker image for bind9
based off of debian:jessie

To pull this image:
`docker pull mbentley/bind9`

Example usage, binding to all IPs on the docker host:
`docker run -d -p 53:53 -p 53:53/udp mbentley/bind9`

Example usage, binding to a specific IP on the docker host:
`docker run -d -p <ip-address>:53:53 -p <ip-address>:53:53/udp mbentley/bind9`

By default, this image forwards all queries to 8.8.8.8 and 8.8.4.4 (Google's DNS servers) and allows recusion.

If you are adding a custom zone file, I would suggest using this image as a base instead of using it directly.
