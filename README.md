# 🧪 FakeStore API – Automação de Testes

Projeto de automação de testes de API desenvolvido com **Python e Robot Framework**, utilizando a [FakeStore API](https://fakestoreapi.com/docs).

## 🚀 Tecnologias utilizadas

- Python
- Robot Framework
- RequestsLibrary
- FakeStore API

## 🎯 Objetivos

- Automatizar testes de API REST.
- Validar requisições HTTP.
- Verificar códigos de status.
- Validar respostas JSON.
- Executar cenários positivos e negativos.

## 🔍 Cenários automatizados

| Método | Cenário | Validação |
|---|---|---|
| GET | Buscar produto existente | Status HTTP e dados |
| GET | Buscar produto inexistente | Tratamento de recurso não encontrado |
| DELETE | Excluir produto | Status HTTP e resposta |

## 🎥 Demonstração da automação

Assista à demonstração prática do projeto, com áudio, apresentando a execução das automações e os resultados dos testes.

▶️ **[Assistir ao vídeo – FakeStore API](https://github.com/Swellhenrique/API-Squad/issues/1#issue-6112278967)

## 📁 Estrutura do projeto

```text
FakeStore-API/
│
├── tests/
│   └── products.robot
│
├── videos/
│   └── API-squad-Swell.mp4
│
├── requirements.txt
└── README.md
```

## ⚙️ Como executar

**1. Clone o repositório**

```bash
git clone https://github.com/Swellhenrique/FakeStore-API.git
```

**2. Acesse a pasta**

```bash
cd FakeStore-API
```

**3. Instale as dependências**

```bash
pip install -r requirements.txt
```

**4. Execute os testes**

```bash
robot tests/products.robot
```

## 📊 Relatórios

O Robot Framework gera os seguintes arquivos:

- `report.html` – Relatório geral.
- `log.html` – Log detalhado.
- `output.xml` – Resultado estruturado.

## 👨‍💻 Autor

**Swell Henrique da Silva**

Estudante de Quality Assurance (QA), com foco em testes de software, automação e qualidade de APIs.

🔗 [GitHub – Swell Henrique](https://github.com/Swellhenrique)

---

