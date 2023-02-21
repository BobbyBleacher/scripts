#mosquitto
sudo mkdir Docker/mosquitto/config/
sudo mkdir Docker/mosquitto/log/
sudo mkdir Docker/mosquitto/data/
sudo touch Docker/mosquitto/config/mosquitto.conf

sudo echo "" > Docker/mosquitto/config/mosquitto.conf
sudo echo "persistence true" >> Docker/mosquitto/config/mosquitto.conf
sudo echo "persistence_location /mosquitto/data/" >> Docker/mosquitto/config/mosquitto.conf
sudo echo "log_dest file /mosquitto/log/mosquitto.log" >> Docker/mosquitto/config/mosquitto.conf
sudo echo "listener 1883" >> Docker/mosquitto/config/mosquitto.conf
sudo echo "allow_anonymous true" >> Docker/mosquitto/config/mosquitto.conf

sudo docker run -d \
  --restart=unless-stopped \
  -p 1883:1883 \
  -v ~/Docker/mosquitto/config/mosquitto.conf:/mosquitto/config/mosquitto.conf \
  -v ~/Docker/mosquitto/log:/mosquitto/log \
  -v ~/Docker/mosquitto/data:/mosquitto/data \
  --name mosquitto \
  eclipse-mosquitto
