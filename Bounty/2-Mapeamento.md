# Bug

Toda vulnerabilidade que a gente pode explorar

## Tipos de Bug

- XSS - Cross Site Scripting

- SQL Injection - Injeção de SQL

- CSRF - Cross Site Request Forgery

- SSRF - Server Side Request Forgery

- RCE - Remote Code Execution

# Reconhecimento de Bug

## Superfície de Ataque

Quanto mais superfície de ataque, mais vulnerabilidades

Superfície = Funcionalidades

## Nosso Workflow

### Domínios

#### Verifica o email

#### Verificar o email das relações com investidores

#### Pesquisar no Google

#### Dados

##### <https://registro.br/tecnologia/ferramentas/whois>

##### Companho no Linux para descobrir os nameservers

```bash
hot -t ns <domínio>
```

#### DNS

##### Zonas de DNS => A, AAAA, CNAME, MX, TXT, NS

##### A mal configuração te permite consultar esses valores e descobrir informações - <https://zonetransfer.me>

#### Certificate Transparency

##### São logs que guardam os certificados SSL - Podendo ver os possíveis subdomínios daquela conta

### Subdomínios

#### Consultando com base no certificado SSL

##### <https://crt.sh>

### Blocos de IP

### Servidores WEB
