#!/bin/bash

echo "Actualice la cache de paquetes y los paquetes instalados en la instancia"
sudo yum update -y

echo "Instale el paquete de Docker Engine de mas reciente"
sudo amazon-linux-extras install docker

echo "Abra el servicio de Docker"
sudo service docker start

echo "Agregue el ec2-user al grupo docker para que pueda ejecutar comandos de Docker sin usar sudo"
sudo usermod -a -G docker ec2-user

echo "Hacer Docker auto-start"
sudo chkconfig docker on

echo "Reiniciar instancia"
sudo reboot
