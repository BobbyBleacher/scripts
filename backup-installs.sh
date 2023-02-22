#!/bin/bash

/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/install-grafana.sh "/HA_Backups/"
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/install-unifi.sh "/HA_Backups/"
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/install-influx.sh "/HA_Backups/"
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/install-tasmoadmin.sh "/HA_Backups/"
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/install-all.sh "/HA_Backups/"
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/install-mosquitto.sh "/HA_Backups/"
