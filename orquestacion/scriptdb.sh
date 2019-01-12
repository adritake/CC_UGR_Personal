#!/bin/bash
# Script para la provisión de la máquina virtual de la base de datos

echo "Actualizando paquetes..."
sudo apt-get update -y

echo "Instalando mongodb..."
sudo apt install -y mongodb

# Es necesario activar ufw para poder abrir puertos posteriormente
echo "Activando cortafuegos..."
sudo ufw enable

# Mongodb escucha en el puerto 27017 por defecto
echo "Abriendo puerto 27017..."
sudo ufw allow 27017

# Copiamos el archivo customizado de configuración de mongo
echo "Moviendo archivo de configuración de mongo..."
sudo mv ./mongodb.conf /etc

# Reiniciamos mongo para que surja efecto la configuración nueva
echo "Reiniciando mongodb..."
sudo service mongodb restart
