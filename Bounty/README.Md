# Conceitos Básicos de WEB

Aulas do curso da Pato Academy

## Conceitos Básicos

### Aplicações WEB

#### Cliente

##### Todos que consomem o serviço do servidor

#### Servidor: Onde está o serviço

O cliente faz uma requisição ao servidor e o servidor responde com uma resposta.

E o servidor responde os dados necessários para montar aquela visualização.

Fazendo download de todos os arquivos necessários.

## Testes

### Black Box

#### Não sabe como funciona por dentro, só sabe o que entra e o que sai.

### SWT

#### Testa o que está dentro da caixa, o que está dentro do código. Chamado de teste de caixa transparente.

## Protocolos

### WEB

#### HTTP

##### HyperText Transfer Protocol

###### Protocolo de transferência de hipertexto



#### HTTPS

##### HyperText Transfer Protocol Secure

###### Protocolo de transferência de hipertexto seguro

### OSI

#### Open Systems Interconnection

##### Aplicação

###### Apresentação

###### Sessão

###### Transporte

###### Rede

###### Enlace

###### Física

### Aquivo

#### FTP

##### File Transfer Protocol

###### Protocolo de transferência de arquivos

#### SMTP

##### Simple Mail Transfer Protocol

###### Protocolo de transferência de correio simples

#### IMAP

##### Internet Message Access Protocol

###### Protocolo de acesso a mensagens da internet

## HTTP

Protocolo de transferência de hipertexto

### Dois momentos

#### Request

É o momento que o cliente faz uma requisição ao servidor.

##### Requisição

É quando verifica se tem permissão, se tem arquivos necessários para montar a visualização. E se tiver, ele responde com os arquivos necessários.

POST - Envia dados para o servidor

GET - Pega dados do servidor

PUT - Atualiza dados do servidor

DELETE - Deleta dados do servidor

#### Response

É o momento que o servidor responde ao cliente.

##### Status Code

Começam com 1 - Informação

Começam com 2 - Sucesso

Começam com 3 - Redirecionamento

Começam com 4 - Erro do cliente

Começam com 5 - Erro do servidor

##### Headers

São informações adicionais que o servidor envia para o cliente.

Body: É o corpo da resposta, onde vem os dados que o servidor envia para o cliente.

## O que é Proxy?

É um intermediário entre o cliente e o servidor.

Podemos usar para fazer cache, para bloquear sites, para fazer auditoria, para fazer controle de acesso.

Com a proxy, podemos modificar as requisições ou bloquear. Podendo analisar

