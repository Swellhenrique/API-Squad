# FakeStore API — Testes Automatizados

## Sobre o projeto

Este projeto tem como objetivo automatizar testes de API utilizando **Robot Framework** e **RequestsLibrary**, validando os endpoints de consulta e exclusão de produtos da FakeStore API.

A automação foi desenvolvida como parte das atividades de uma Sprint de QA, com foco na validação de respostas HTTP, estrutura dos dados JSON e comportamento dos endpoints.

## Tecnologias utilizadas

- **Python** — ambiente de execução.
- **Robot Framework** — framework de automação de testes.
- **RequestsLibrary** — execução de requisições HTTP.
- **Collections** — validação de estruturas de dados.
- **Visual Studio Code** — ambiente de desenvolvimento.
- **FakeStore API** — API utilizada nos testes.

## Endpoints automatizados

| Método | Endpoint | Objetivo |
|---|---|---|
| GET | `/products/{id}` | Consultar um produto específico pelo ID. |
| DELETE | `/products/{id}` | Enviar uma solicitação de exclusão de produto. |

Documentação: https://fakestoreapi.com/docs

## Cenários de teste

### 1. GET — Buscar produto existente

O teste realiza uma requisição para consultar um produto específico.

**Validações realizadas:**
- Status HTTP `200`.
- ID retornado corresponde ao ID solicitado.
- Presença dos campos `title`, `price`, `description`, `category` e `image` na resposta.

### 2. DELETE — Excluir produto existente

O teste envia uma requisição para excluir um produto pelo ID.

**Validações realizadas:**
- Status HTTP `200`.
- ID retornado corresponde ao ID solicitado.
- Presença dos campos `title` e `price` na resposta.

**Observação:** a FakeStore API é um serviço de demonstração e pode simular a exclusão sem remover permanentemente o produto.

## Estrutura do projeto

```text
API-Squad/
├── products.robot
├── output.xml
├── log.html
└── report.html
```

Os arquivos de relatório são gerados pelo Robot Framework após a execução dos testes.

## Instalação

Certifique-se de ter Python instalado e execute os comandos abaixo no terminal:

```bash
pip install robotframework
pip install robotframework-requests
```

## Executando os testes

No terminal do VS Code, navegue até a pasta que contém o arquivo `products.robot` e execute:

```bash
robot products.robot
```

O Robot Framework executará os cenários e apresentará os resultados no terminal.

## Relatórios de execução

Após a execução, são gerados os seguintes arquivos:

- `report.html` — resumo dos resultados dos testes.
- `log.html` — detalhes da execução e das validações.
- `output.xml` — resultados estruturados da execução.

## Desafios e aprendizados

Durante o desenvolvimento, foram trabalhados os seguintes pontos:

- Construção de requisições HTTP GET e DELETE.
- Validação de status codes e conteúdo JSON.
- Utilização de variáveis para construir URLs dinamicamente.
- Tratamento de respostas da API.
- Investigação de erros de autenticação durante os testes com o endpoint de login.
- Compreensão das limitações de uma API de demonstração, especialmente em operações de exclusão.

## Autor

**Swell Henrique da Silva**

Projeto desenvolvido como parte das atividades práticas de QA e automação de testes de API.
