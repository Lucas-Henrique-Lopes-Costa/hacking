# Parte I: Requisitos, Design e Reutilização

## Noções básicas de segurança: aprenda sobre gerenciamento de riscos, a tríade “CIA” e requisitos

# Introdução ao curso

## Introdução

### Configurações de segurança e privacidade

## Motivação

### Motivação: Por que é importante proteger o software?

### Motivação: Por que fazer este curso?

# Noções básicas de segurança

## O que nós precisamos?

### O que significa “Segurança”?

#### Segurança é a proteção dos ativos da informação, incluindo a própria informação, sistemas de computador, hardware, software e mídia na qual a informação é armazenada ou transmitida

### Requisitos de segurança

#### Requisitos de segurança são os recursos e funções de segurança que o sistema deve fornecer

#### Três objetivos (tríade CIA)

##### Confidencialidade: Nenhuma leitura não autorizada

##### Integridade: Nenhuma modificação não autorizada (gravar ou excluir)

##### Disponibilidade: Continua a funcionar na presença de ataque

##### Responsabilidade: Atribuir ações às pessoas - Ex. assinatura digital

#### Mecanismos de suporte

##### Identificação e Autenticação (I&A): Quem é você? (Nome de Usuário ou Endereço de Email)

##### Autorização: O que você pode fazer? (permissões)

##### Auditoria(aka logging): O que você fez? (registro de ações)

### O que é privacidade e por que ela é importante

#### O direito de ser deixado em paz ou liberdade de interferência ou intrusão - IAPP

##### Privacidade da informação é o direito de ter algum controle sobre como suas informações pessoais são coletadas e usadas

###### privacidade é proteger dados pessoais sobre indivíduos contra abuso

### Requisitos de privacidade

#### A privacidade é importante porque nos permite criar limites e nos proteger de interferências injustificadas em nossas vidas, permitindo-nos negociar quem somos e como queremos interagir com o mundo ao nosso redor

#### Sem privacidade, perdemos a liberdade de sermos nós mesmos - Você se sente como se estivesse sendo observado, e é uma espécie de dominação

#### Não colete dados desnecessários

#### Documentos que protegem a privacidade

##### GDPR - Regulamento Geral de Proteção de Dados (UE)

##### LGPD - Lei Geral de Proteção de Dados (BR)

### Gerenciamento de riscos

#### Identificação

#### Avaliação

#### Priorização de riscos

#### Planejamento de riscos

##### Determine o processo de gerenciamento de riscos de seus projetos

#### Identificação de riscos

##### Um bom truque é procurar projetos semelhantes - que riscos e problemas eles tiveram?

#### Análise de risco

##### Probabilidade do evento indesejável e a gravidade de suas consequências

##### Um risco torna-se cada vez mais importante se sua probabilidade e/ou gravidade aumentar

#### Tratamento de riscos

##### Aceitação (& Monitoramento): baixa gravidade

##### Prevenção: reduz ao máximo a probabilidade de ocorrência

##### Transferência

##### Controle

###### Reconhecimento de erros comuns

###### Use abordagens (como design seguro, linguagens de programação específicas e APIs)

###### Use ferramentas e revisões para detectar erros (incluindo vulnerabilidades)

###### Modifique o sistema para que tenham menos probabilidade de vulnerabilidades

##### Monitoramento de risco

###### Acompanhe os riscos que você identificou e novos riscos do mercado

### Processos de Desenvolvimento / Defesa em Ampla

### Proteger, detectar, responder

### Vulnerabilidades

#### DoS, roubo de dados, modificação de dados

##### Um invasor cria e envia tráfego para seu aplicativo de uma forma que sobrecarrega seus servidores

##### Normal: um usuário normal envia uma solicitação ao seu aplicativo - por exemplo um arquivo zip com um grande número de arquivos

##### Ataques distribuídos de negação de serviço (DDoS) - por exemplo um botnet envia um grande número de solicitações para seu aplicativo

##### <https://semgrep.dev/blog/2020/understanding-and-preventing-dos-in-web-apps>
##### <https://www.commoncriteriaportal.org/>

#### Se houver software existente que faça algo parecido com o software que você está desenvolvendo, observe seus recursos de segurança. Eles adicionaram esses recursos por um motivo

## Como podemos chegar lá?

### Determinar os requisitos (o que o software deve fazer)

#### Existem dados que devem ser mantidos em sigilo?

### Determinar o projeto arquitetônico (como dividir o problema em componentes interativos para resolvê-lo)

### Selecionar componentes reutilizáveis ​​(decidir quais pacotes/bibliotecas reutilizáveis ​​você usará)

### Implemente (escreva o código)

### Verifique (escreva/implemente testes e use analisadores para obter confiança de que ele faz o que deveria)

### Implante (instale o software em um ambiente de produção)

# Projeto

## Noções básicas de design seguro

### O que são princípios de design de segurança?

### Princípios de design seguro amplamente recomendados

### Ultimo privilégio

### Mediação Completa (Não Ignorável)

### O resto dos princípios de design da Saltzer & Schroeder

### Outros princípios de design

# Reutilizando software externo

## Cadeia de mantimentos

### Noções básicas de reutilização de software

### Selecionando (avaliando) software de código aberto

### Baixando e instalando software reutilizável

### Atualizando Software Reutilizado

# Parte II: Implementação

# Noções básicas de implementação

## Visão geral da implementação

# Validação de entrada

## Noções básicas de validação de entrada

### Introdução aos fundamentos da validação de entrada

### Como você valida a entrada?

## Validação de entrada: números e texto

### Validação de entrada: alguns tipos de dados simples

### Sidequest: texto, Unicode e localidades

### Validando Texto

### Introdução às expressões regulares

### Usando expressões regulares para validação de entrada de texto

### Combatendo ataques ReDoS em expressões regulares

## Validação de entrada: além de números e texto

### Desserialização insegura

### Estruturas de dados de entrada (XML, HTML, CSV, JSON e uploads de arquivos)

### Minimizando superfície de ataque, identificação, autenticação e autorização

### Caminhos de pesquisa e variáveis de ambiente (incluindo programas setuid/setgid)

### Entradas Especiais: Padrões Seguros e Inicialização Segura

## Considere a disponibilidade de todas as entradas

### Considere a disponibilidade de todas as entradas Introdução

# Processando dados com segurança

## Processando dados com segurança: questões gerais

### Prefira dados confiáveis. Trate dados não confiáveis como perigosos

### Evite credenciais padrão e codificadas

### Evite conversão ou transmissão incorreta

## Processando dados com segurança: comportamento indefinido/segurança de memória

### Combatendo leituras e gravações fora dos limites (estouro de buffer)

### Liberação dupla, uso após liberação e liberação ausente

### Evite comportamento indefinido

## Processando dados com segurança: calcule corretamente

### Evite estouro de número inteiro, wraparound e underflow

# Chamando outros programas

## Introdução a programas de chamadas seguras

### Introdução a programas de chamadas seguras - O básico

## Chamando outros programas: injeção e nomes de arquivos

### Injeção SQL

### Injeção de comando do sistema operacional (Shell)

### Outros ataques de injeção

### Nomes de arquivos (incluindo passagem de caminho e seguimento de link)

## Chamando outros programas: outros problemas

### Chame APIs para programas e verifique o que é retornado

### Tratamento de erros

### Exploração madeireira

### Código de depuração e asserção

### Combate a ataques de negação de serviço (DoS)

# Enviando saída

## Introdução ao envio de saída

### Combatendo scripts entre sites (XSS)

### Política de Segurança de Conteúdo (CSP)

### Outros cabeçalhos de proteção HTTP

### Cookies e sessões de login

### CSRF/XSRF

### Redirecionamentos e encaminhamentos abertos

### HTML **target** e JavaScript **window.open()**

### Usando URLs verificados inadequadamente/falsificação de solicitação no servidor (SSRF)

### Política de mesma origem e compartilhamento de recursos entre origens (CORS)

### Formatar strings e modelos

### Minimize o feedback/exposição de informações

### Ataques de canal lateral

# Parte III: Verificação e tópicos mais especializados

# Verificação

## Noções básicas de verificação

### Visão geral da verificação

## Análise Estática

### Visão geral da análise estática

### Análise de Composição de Software (SCA)/Análise de Dependência

## Análise Dinâmica

### Visão geral da análise dinâmica

### Teste de Fuzz

### Verificadores de aplicativos da Web

## Outros tópicos de verificação

### Combinando abordagens de verificação

# Modelagem de ameaças

## Modelagem de ameaças/modelagem de ataques

### Introdução à modelagem de ameaças

### PASSADO

# Criptografia

## Aplicando criptografia

### Introdução à criptografia

### Algoritmos de criptografia de chave simétrica/compartilhada

### Hashes criptográficos (impressões digitais)

### Criptografia de chave pública (assimétrica)

### Gerador de números pseudo-aleatórios criptograficamente seguro (CSPRNG)

### Armazenamento de senhas

### Segurança da Camada de Transporte (TLS)

### Outros tópicos em criptografia

# Outros tópicos

## Divulgações de vulnerabilidades

### Recebendo relatórios de vulnerabilidade

### Responda e corrija a vulnerabilidade em tempo hábil

### Envio de relatórios de vulnerabilidade para outras pessoas

## Diversos

### Casos de Garantia

### Fortaleça o ambiente de desenvolvimento (incluindo build e pipeline de CI/CD) e ambiente de distribuição

### Distribuição, colocação em campo/implantação, operações e descarte

### Inteligência Artificial (IA), Aprendizado de Máquina (ML) e Segurança

### Métodos Formais

## Principais listas de vulnerabilidades

### Top 10 da OWASP

### Top 25 da CWE

## Notas Finais

### Conclusões

# Parte IV: Materiais de apoio que não fazem parte do curso

# Glossário

# Leitura adicional

# Mapeamentos Antigos

## OWASP Top 10 e CWE Top 25

### OWASP Top 10 (edição de 2017)

### CWE Top 25 (edição de 2019)
