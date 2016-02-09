mbentley/bind9
==============

docker image for bind9
based off of alpine:latest

To pull this image:
`docker pull mbentley/bind9`

Example usage, binding to all IPs on the docker host:
`docker run -d -p 53:53 -p 53:53/udp mbentley/bind9`

Example usage, binding to a specific IP on the docker host:
`docker run -d -p <ip-address>:53:53 -p <ip-address>:53:53/udp mbentley/bind9`

By default, this image is configured to only answer queries from 127.0.0.1 which will only work out of the box if you're using `--net=host`.  Copy and edit one of the files in `/etc/bind` to customize the server for your needs.
