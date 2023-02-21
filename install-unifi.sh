#!/bin/bash

sudo mkdir Docker/unifi

sudo docker run -d \
  --restart=unless-stopped \
  --init \
  -p 8080:8080 \
  -p 8443:8443 \
  -p 3478:3478/udp \
  -p 10001:10001/udp \
  -e TZ='America/Chicago' \
  -v ~/Docker/unifi:/unifi \
  --user unifi \
  --name unifi \
  jacobalberty/unifi
