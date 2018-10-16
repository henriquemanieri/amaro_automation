# Desafio QA Constructor

Abaixo segue as isntruções para rodar, tato a automação Front-end, quanto a Back-end

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

```
Front-End:
cucumber -t @login

cucumber -t @active_user

cucumber -t @inactive_user

cucumber -t @transaction_active_client

cucumber -t @list_transactions

cucumber -t @regression

Back-End:
cucumber -t @login

cucumber -t @active_user

cucumber -t @inactive_user
```
