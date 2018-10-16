# Desafio QA Constructor

Nesse projeto foi automatizado um sistema web e uma API Rest.
Em seguida esta descrito os pré-requisitos para e como rodar a automação.
Todos os BDDs e os steps, tanto do sistema web, quanto da API, esta na pasta "features".
Além disso, dentro do projeto, existe um relatorio, com o nome de "Desafio QA Constructor", com o plano de teste e os casos de teste, detalhando todos os casos abordados e mostrando os bugs encontrados.

Obrigado pela oportunidade.
Espero que gostem.

## Pré-requisitos

```
Ruby 2.4.2
Chromedriver 2.40
Bundler
```

## Começando

Para que todos os frameworks funcionem no projeto, é necessário rodar o seguinte comando:

```
bundle install
```
Em seguida já é possível usar os seguintes comandos, para rodar a automação:
PS. Todos os cenários são descritos, por funcionalidade, dentro do documento "Desafio QA Constructor".

```
Front-End:
cucumber -t @client_register_active

cucumber -t @client_register_inactive_random

cucumber -t @list_active_client

cucumber -t @transaction_active_client

cucumber -t @list_transactions

cucumber -t @regression

Back-End:
cucumber -t @get_api
```
