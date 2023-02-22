#!/bin/bash

sudo mkdir Docker/unifi
sudo mkdir Docker/unifi/cert

sudo docker run -d \
  --restart=unless-stopped \
  --init \
  -p 8080:8080 \
  -p 8443:8443 \
  -p 3478:3478/udp \
  -p 10001:10001/udp \
  -e TZ='America/Chicago' \
  -e CERT_IS_CHAIN=true \
  -v /home/pi/Docker/unifi:/unifi \
  -v /etc/letsencrypt/archive/fwtp.ddns.net:/unifi/cert \
  --user unifi \
  --name unifi \
  jacobalberty/unifi
