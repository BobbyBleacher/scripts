#!/bin/bash

#influx
sudo docker run -d \
  --restart=unless-stopped \
  -e INFLUXDB_HTTP_AUTH_ENABLED=true \
  -e INFLUXDB_ADMIN_USER=hass \
  -e INFLUXDB_ADMIN_PASSWORD=zmakqo10 \
  -e INFLUXDB_ADMIN_ENABLED=true \
  -v /var/lib/influxdb:/var/lib/influxdb \
  -v /etc/influxdb/scripts:/docker-entrypoint-initdb.d \
  --name influxdb -p 8083:8083 -p 8086:8086 influxdb:1.8

curl --user hass:zmakqo10 -XPOST http://localhost:8086/query \
  --data-urlencode "q=CREATE DATABASE hassdb"

curl -G http://localhost:8086/query \
  --data-urlencode "u=hass" \
  --data-urlencode "p=zmakqo10" \
  --data-urlencode "q=SHOW DATABASES"
