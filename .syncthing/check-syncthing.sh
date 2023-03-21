#!/bin/bash

# get the IP address of the eth0 interface
SERVER_IP=$(ip addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
SYNCTHING_PORT=8384

# perform a curl request with the basic auth credentials
response=$(curl -s -o /dev/null -w "%{http_code}" http://$SERVER_IP:$SYNCTHING_PORT)

if [ $response -eq 401 ]; then
  echo "Basic authentication is enabled at $SERVER_IP"
  echo "Doing nothing..."
else
  echo "Basic authentication is not enabled at $SERVER_IP"
  echo "Restarting syncthing..."
  cd $HOME/.syncthing
  docker-compose restart
fi

