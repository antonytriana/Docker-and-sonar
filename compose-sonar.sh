#!/bin/bash

echo "Se descarga la ultima version estable de Docker Compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo "Permisos de ejecucion al binario"
sudo chmod +x /usr/local/bin/docker-compose

echo "Se baja el archivo docker-compose de SonarQube y PostgreSQL"
sudo wget https://raw.githubusercontent.com/antonytriana/petbook-reto/master/docker-compose.yml

echo "Establecer temporalmente max_map_count"
sudo sysctl -w vm.max_map_count=262144

echo "Se ejecuta SonarQube con PostgreSQL"
docker-compose up -d
