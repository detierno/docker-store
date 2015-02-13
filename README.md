Locoloja
=======
[![Build Status](https://semaphoreapp.com/api/v1/projects/e4bb43d9-2ddc-40b3-9b93-b3789ee24dd6/350076/badge.png)](https://semaphoreapp.com/locomotiva/locoloja)
[![Code Climate](https://codeclimate.com/repos/54ddddbb6956807a07003678/badges/5839bd362020fad6415a/gpa.svg)](https://codeclimate.com/repos/54ddddbb6956807a07003678/feed)

[Pivotal Tracker](https://www.pivotaltracker.com/n/projects/1275532)

Porque loja é o que há.

# Instalação

```ruby
  bundle install
  rake db:create && rake db:migrate
```

Após instalar é necessário gerar o .env com as configurações do sistema,
para isso basta usar

```bash
  cp env.example .env
```

e configure as variáveis com os valores reais.

## Deploy Workflow

Para o fluxo de entrega trabalharemos com três branches principais,
*master*, *staging* e *production*. Este projeto está integrado com o o
Pivotal Tracker então podemos entregar estórias automaticamente (ao criar
um commit e enviar para a branch master), de
acordo com a documentação:

> The minimum commit message string that will allow Tracker to associate a
> /source_commits POST with a story and create a comment is a
> single story ID enclosed in square brackets: '[#12345678]'.
>
> A more typical message, indicating that one commit completes two stories (which need not be in the same Tracker project), might
> look like this: *finally [finished #12345678 #12345779], fixes client/server integration glitch*

Dessa forma teremos as estórias automaticamente marcadas como
finalizadas.

Após um merge na branch staging e quando o código estiver ok no serviço
de testes basta executar este código (hook automático) para que ele
escaneie as estórias marcadas nos commit e marque as mesmas como
entregues.

```bash
     bundle exec tracker $TRACKER_PROJECT $TRACKER_TOKEN --label ci-deployment
```

# Testando

Para rodar todos os testes basta usar

    rake test

Para rodar os teste unitários

    rake test:unit

Para rodar os testes de integração

    rake test:integration

# Direitos

Todos os direitos reservados. Desenvolvido por [Locomotiva.pro](http://locomotiva.pro)

