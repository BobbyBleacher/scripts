#grafana
sudo docker run -d --name grafana \
  --restart=unless-stopped \
  -e "GF_SECURITY_ALLOW_EMBEDDING=true" \
  -e "GF_AUTH_ANONYMOUS_ENABLED=true" \
  -v /etc/letsencrypt/archive/fwtp.ddns.net:/usr/share/grafana/certs \
  -v /home/pi/Docker/grafana/config/grafana.ini:/etc/grafana/grafana.ini \
  -v /home/pi/Docker/grafana/data:/var/lib/grafana \
  -v /home/pi/Docker/grafana/log:/var/log/grafana \
  -p 3000:3000 grafana/grafana
