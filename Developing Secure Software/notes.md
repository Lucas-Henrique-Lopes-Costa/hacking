# Noções básicas de segurança: aprenda sobre gerenciamento de riscos, a tríade “CIA” e requisitos

## Noções básicas de segurança

### Configurações de segurança e privacidade

#### O que significa segurança?

##### Segurança é a proteção dos ativos da informação, incluindo a própria informação, sistemas de computador, hardware, software e mídia na qual a informação é armazenada ou transmitida

##### Três objetivos (tríade CIA)

###### Confidencialidade: Nenhuma leitura não autorizada

###### Integridade: Nenhuma modificação não autorizada (gravar ou excluir)

###### Disponibilidade: Continua a funcionar na presença de ataque

###### *Responsabilidade: Atribuir ações às pessoas - Ex. assinatura digital

##### Mecanismos de suporte

###### Identificação e Autenticação (I&A): Quem é você? (Nome de Usuário ou Endereço de Email)

###### Autorização: O que você pode fazer? (permissões)

###### Auditoria(aka logging): O que você fez? (registro de ações)

### Requisitos

#### Requisitos de segurança

##### Requisitos de segurança são os recursos e funções de segurança que o sistema deve fornecer

##### São derivados dos objetivos de segurança

#### Identificar os requisitos de segurança

##### Pense em cada tipo de informação que o sistema irá gerenciar

#### Entenda os tipos de atacantes

##### DoS, roubo de dados, modificação de dados

###### Um invasor cria e envia tráfego para seu aplicativo de uma forma que sobrecarrega seus servidores

###### Normal: um usuário normal envia uma solicitação ao seu aplicativo - por exemplo um arquivo zip com um grande número de arquivos

###### Ataques distribuídos de negação de serviço (DDoS) - por exemplo um botnet envia um grande número de solicitações para seu aplicativo

##### <https://semgrep.dev/blog/2020/understanding-and-preventing-dos-in-web-apps>
##### <https://www.commoncriteriaportal.org/>

###### Se houver software existente que faça algo parecido com o software que você está desenvolvendo, observe seus recursos de segurança. Eles adicionaram esses recursos por um motivo

### O que é privacidade e por que é importante?

#### O direito de ser deixado em paz ou liberdade de interferência ou intrusão - IAPP

##### Privacidade da informação é o direito de ter algum controle sobre como suas informações pessoais são coletadas e usadas

###### privacidade é proteger dados pessoais sobre indivíduos contra abuso

#### O que é importante?

##### A privacidade é importante porque nos permite criar limites e nos proteger de interferências injustificadas em nossas vidas, permitindo-nos negociar quem somos e como queremos interagir com o mundo ao nosso redor

##### Sem privacidade, perdemos a liberdade de sermos nós mesmos - Você se sente como se estivesse sendo observado, e é uma espécie de dominação

##### Não colete dados desnecessários

##### Documentos que protegem a privacidade

###### GDPR - Regulamento Geral de Proteção de Dados (UE)

###### LGPD - Lei Geral de Proteção de Dados (BR)

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

### Como chegar lá?

#### Determinar os requisitos (o que o software deve fazer)

##### Existem dados que devem ser mantidos em sigilo?

#### Determinar o projeto arquitetônico (como dividir o problema em componentes interativos para resolvê-lo)

#### Selecionar componentes reutilizáveis ​​(decidir quais pacotes/bibliotecas reutilizáveis ​​você usará)

#### Implemente (escreva o código)

#### Verifique (escreva/implemente testes e use analisadores para obter confiança de que ele faz o que deveria)

#### Implante (instale o software em um ambiente de produção)

