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

## URL

Uniform Resource Locator

É um padrão para poder acessar esse recurso na internet

### Estrutura

#### Protocolo ou Schema

Geralmente é o HTTP ou HTTPS

#### Host

É o endereço do servidor
<www.google.com.br>

www - subdomínio

google - domínio

com - domínio de primeiro nível

br - domínio de segundo nível

#### Porta

Não é obrigatório, mas se não tiver, ele vai usar a porta padrão do protocolo

Por exemplo, se for HTTP, ele vai usar a porta 80
E para HTTPS, ele vai usar a porta 443

#### Caminho

Onde está o recurso que queremos acessar

#### Query (parâmetros)

Ele é opcional, mas se tiver, ele vai começar com uma interrogação

E os parâmetros são separados por um &

#### Fragmento

Anchors ou Hash

Ele vem para ajudar a localizar um elemento dentro da página

No HTTP ele não é enviado para o servidor, ele é usado apenas no cliente

## O HTTP Authentification

É um protocolo de autenticação

### Basic

É o mais simples, mas não é o mais seguro

Ele envia o usuário e a senha em texto puro

<HTTPS://USUARIO:SENHA@URL>

## Form

É um elemento HTML que serve para enviar dados para o servidor

Applicaton/x-www-form-urlencoded

nome=Lucas&nick=lucashlc

Essa linguagem utilizam o URL code, que é um padrão para poder enviar dados pela URL

Utilizam o padrão ASCII

## Montagem de Página

No começo monta no servidor, e depois envia para o cliente

E o navegador vai montar a página e interpreta o HTML e suas estilizações

Mas hoje, o servidor envia o HTML e o cliente monta a página

Eles recebem só as "receitas" e montam a página, indicando onde vai cada elemento

E depois ele vai pegar apenas os dados, porque a estrutura ele já sabe o que tem que fazer

### API

Ela facilita uma comunicão entre dois sistemas, sem precisar de uma interface gráfica

E o backend se tornou um api que vai enviar os dados para o frontend

## Seção

### HTTP é um protocolo sem estado - Stateless

Isso significa que ele sempre compreende todas as requisições como sendo novas

Sem precisar gravar mensagens de requisições anteriores

Só que hoje com os Cookies, ele consegue gravar as requisições anteriores

## Cookies

É um arquivo que fica no navegador do cliente

E ele é enviado para o servidor, e o servidor pode ler e escrever nele

Ele funciona como um crachá, que não precisa verificar toda as informações, mas apenas o identificador do crachá

E ele pode ser usado para armazenar informações de login, carrinho de compras, preferências do usuário, etc

Mas hoje, também podemos usar o Local Storage, que é um armazenamento local do navegador

# Relatório de Acompanhamento

## Entender como a aplicação funciona (Cliente e Servidor)

### Como é enviado o conteúdo

### Como é enviado as respostas do cliente

### Como é feito os cálculos ou funcionalidades

#### Onde armazena essas informações

## O que está no lado do Cliente

## O que está no lado do Servidor

# Soluções

## Sempre deixar os dados sensíveis no lado do servidor

No caso do jogo de quiz, no lado do cliente para cada questão ele consulta o servidor para ver se está certo ou errado

## Validar os dados no lado do servidor

Quantidade de perguntas, respostas e limites de cada valor

## Rodar as coisas só essenciais no lado do cliente, preferencialmente no lado do servidor

## Uma forma de dificultar, mas não impedir é usar o Checksum que é um ofuscador de código
