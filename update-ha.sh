#!/bin/bash

IMAGE=homeassistant/home-assistant
NAME=homeassistant

if ! sudo docker pull $IMAGE | tee /dev/stderr | grep -q "Image is up to date"
then
  echo "removing old $NAME for $IMAGE"
  sudo docker stop $NAME
  sudo docker rm -f $NAME
  sudo docker run -d --name homeassistant --restart=unless-stopped --privileged -e TZ=America/Chicago -v /home/pi/Docker/homeassistant/config:/config --network=host homeassistant/home-assistant
else
 echo "No updates found"
fi

# if this returns "Image is up to date" then you can stop here
#/usr/bin/docker pull ghcr.io/home-assistant/raspberrypi4-homeassistant:stable

# stop the running container
#/usr/bin/docker stop homeassistant

# remove it from Docker's list of containers
#/usr/bin/docker rm homeassistant

# finally, start a new one
#/usr/bin/docker run -d --name homeassistant --restart=unless-stopped --privileged -e TZ=MY_TIME_ZONE -v /PATH_TO_YOUR_CONFIG:/config --network=host ghcr.io/home-assistant/raspberrypi4-homeassistant:stable
