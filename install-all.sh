#!bin/bash

sudo chmod -R o+rwx Docker/

sudo bash install-grafana.sh
sudo bash install-influx.sh
sudo bash install-mosquitto.sh
sudo bash install-tasmoadmin.sh
sudo bash install-unifi.sh
