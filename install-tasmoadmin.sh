#tasmoadmin

sudo mkdir /home/pi/Docker/TasmoAdmin/
sudo mkdir /home/pi/Docker/TasmoAdmin/data/

sudo docker run -d -p 5555:80 \
  -v /home/pi/Docker/TasmoAdmin/data:/data \
  --name=TasmoAdmin \
  --restart=unless-stopped \
  raymondmm/tasmoadmin
