#!/bin/bash

# Atualizar o sistema
sudo apt update && sudo apt upgrade -y

# Instalar Go Language
echo "Instalando Go Language..."
sudo apt install golang-go -y

# Instalar VScode
echo "Instalando VScode..."
sudo apt install code -y

# Instalar pip3 do python
echo "Instalando pip3..."
sudo apt install python3-pip -y

# Instalar Assetfinder
echo "Instalando Assetfinder..."
go get -u github.com/tomnomnom/assetfinder

echo "Todas as ferramentas foram instaladas com sucesso!"
