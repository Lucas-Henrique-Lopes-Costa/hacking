#!/bin/bash

# Verificar Go Language
if go version &>/dev/null; then
    echo "Go Language instalado"
else
    echo "Go Language NÃO está instalado."
fi

# Verificar VScode
if code --version &>/dev/null; then
    echo "VScode instalado"
else
    echo "VScode NÃO está instalado."
fi

# Verificar pip3 do Python
if pip3 --version &>/dev/null; then
    echo "pip3 instalado"
else
    echo "pip3 NÃO está instalado."
fi
