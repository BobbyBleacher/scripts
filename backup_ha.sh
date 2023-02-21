home="FWTP"
outfile="${home}-backup.$(date +%Y%m%d).zip"
sudo docker stop homeassistant
sudo zip -r /home/pi/"${outfile}" /home/pi/Docker/homeassistant/config -x /home/pi/Docker/homeassistant/config/home-assistant_v2.db
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/"${outfile}" "/HA_Backups/${home}/" && rm -f "${outfile}"
sudo docker start homeassistant
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/.dropbox_uploader "/HA_Backups/${home}/"
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/dropbox_uploader.sh "/HA_Backups/${home}/"
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/commands "/HA_Backups/${home}/"
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/get-docker.sh "/HA_Backups/${home}/"
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/update-ha.sh "/HA_Backups/${home}/"
/bin/bash /home/pi/dropbox_uploader.sh upload /home/pi/backup_ha.sh "/HA_Backups/${home}/"
