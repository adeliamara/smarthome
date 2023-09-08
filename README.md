# Projeto SmartHome API

Este projeto faz parte da disciplina "Programação para Internet II" ministrada pelo Prof. Rogério Silva no Curso de Superior de Tecnologia em Análise e Desenvolvimento de Sistemas do Instituto Federal do Piauí, no semestre ADS I – 2023.2.

## Objetivo

O objetivo deste projeto é praticar o projeto e implementação de uma API RESTful para a gestão de dispositivos inteligentes em residências ou empresas. A atividade também inclui a documentação da API usando o OPEN API e a criação das primeiras estruturas de arquitetura, incluindo rotas, controladores, serviços e repositórios. (DOCUMENTAÇÃO PENDENTE)

## Detalhes Técnicos (IMPLEMENTADOS ATE ENTAO)

* **Deploy**: https://smarthome-production.up.railway.app/
* **Tipo de API:** RESTful
* **Persistência de dados:** Utilização de DDD Repository, com opção de armazenamento (POR ENQUANTO ESTÁ EM SQLITE)
    - seguindo este padrão: https://engineering.solarisbank.com/the-repository-pattern-in-ruby-with-the-active-record-library-f0445fa282c
* **Services:** Implementação do padrão Command-Query Separation, com foco na criação de testes para os serviços. (AINDA NAO IMPLEMENTADO)
* **Autenticação:** Não é necessária autenticação para acessar a API.
* **Padrão de Projeto**: Aplicação do padrão de projeto state (https://refactoring.guru/pt-br/design-patterns/state)




## Ruby version

Este projeto foi desenvolvido utilizando a versão 7.0

## System dependencies

Antes de iniciar o projeto, certifique-se de que você possui todas as dependências de sistema necessárias instaladas. Você pode listar as dependências específicas aqui.

## Configuration

Explique qualquer configuração especial que precisa ser feita antes de iniciar o projeto. Isso pode incluir a configuração de variáveis de ambiente, chaves de API ou qualquer outra configuração personalizada.

## Para testar os endpoints com API Contract no Postman

Importe a collection para o postman e teste os endpoints. A {{URI_BASE}} já está definida com o link do deploy.

## Banco de Dados

1. Clone o repositório:

   ```bash
   git clone https://github.com/adeliamara/smarthome.git
   ```
Acesse o diretório do projeto:

   ```bash
cd smarthome
```

Instale as dependências:

```bash
bundle install
```

Configure o banco de dados em config/database.yml.

Crie o banco de dados e execute as migrações:

```bash
rails db:create
rails db:migrate
```

Inicie o servidor local:

```bash
rails server
```
Acesse a aplicação em seu navegador em http://localhost:3000.


