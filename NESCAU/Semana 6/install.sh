#!/bin/bash

echo "Instalando ferramentas..."

# Instalar haktrails
echo "Instalando haktrails..."
go install -v github.com/hakluke/haktrails@latest

# Instalar chaos-client
echo "Instalando chaos-client..."
go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest

# Instalar github-subdomains
echo "Instalando github-subdomains..."
go install github.com/gwen001/github-subdomains@latest

echo "Todas as ferramentas foram instaladas com sucesso!"
