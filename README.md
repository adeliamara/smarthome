# Projeto SmartHome API

Este projeto faz parte da disciplina "Programação para Internet II" ministrada pelo Prof. Rogério Silva no Curso de Superior de Tecnologia em Análise e Desenvolvimento de Sistemas do Instituto Federal do Piauí, no semestre ADS I – 2023.2.

## Objetivo

O objetivo deste projeto é praticar o projeto e implementação de uma API RESTful para a gestão de dispositivos inteligentes em residências ou empresas. A atividade também inclui a documentação da API usando o OPEN API e a criação das primeiras estruturas de arquitetura, incluindo rotas, controladores, serviços e repositórios. (DOCUMENTAÇÃO PENDENTE)

## Detalhes Técnicos (IMPLEMENTADOS ATE ENTAO)

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

## Banco de Dados

### Database creation

```bash
# Crie o banco de dados
rails db:create
Database initialization
Explique como inicializar o banco de dados, se houver necessidade.
```

```bash
# Execute as migrações
rails db:migrate
```
