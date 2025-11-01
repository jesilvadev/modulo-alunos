# Módulo de Alunos — Sistema de Academia

Este repositório contém o microserviço do módulo de Alunos, desenvolvido como parte do projeto de Processo de Software, aplicando a metodologia Scrum.  
O módulo é responsável pelo gerenciamento completo do cadastro e controle de alunos da academia, conforme o contrato técnico do sistema.

---

## Equipe

| Integrante                            | Função                                            |
| ------------------------------------- | ------------------------------------------------- |
| **Jefferson Luan da Silva Alves**     | Product Owner / Scrum Master / Desenvolvedor / QA |
| **Francisca Samira Aquino França**    | Desenvolvedora / QA                               |
| **Francisca Lorrayne de Lima Santos** | Desenvolvedora / QA                               |
| **Maria Herculana da Silva Souza**    | Desenvolvedora / QA                               |
| **Mateus Gomes Salomé**               | Desenvolvedor                                     |
| **Pedro Damião de Oliveira Luz**      | Desenvolvedor                                     |

---

## Objetivo do Módulo

O Módulo de Alunos tem como propósito centralizar o gerenciamento de cadastros de alunos, oferecendo operações CRUD (criar, listar, buscar, atualizar e remover) de forma independente e segura.  
O serviço é disponibilizado via API REST e executado em container Docker, podendo ser integrado a outros módulos do sistema de academia.

---

## Tecnologias Utilizadas

- **Linguagem:** Python
- **Framework:** Django REST Framework
- **Banco de Dados:** SQLite
- **Containerização:** Docker
- **Metodologia:** Scrum
- **Versionamento:** Git + GitHub

---

## Pré-requisitos

Antes de iniciar, certifique-se de ter instalado:

- **Python 3.12**
- **Docker** (opcional, para execução containerizada)

---

## Especificações Técnicas

- **Porta padrão:** `5003`
- **Prefixo de rota:** `/api/v1/alunos`
- **Formato das respostas:** `JSON`

### Endpoints

| Método   | Rota                  | Descrição                |
| -------- | --------------------- | ------------------------ |
| `POST`   | `/api/v1/alunos`      | Cadastrar novo aluno     |
| `GET`    | `/api/v1/alunos`      | Listar todos os alunos   |
| `GET`    | `/api/v1/alunos/{id}` | Buscar aluno específico  |
| `PUT`    | `/api/v1/alunos/{id}` | Atualizar dados do aluno |
| `DELETE` | `/api/v1/alunos/{id}` | Remover aluno do sistema |

### Exemplo de resposta JSON

```json
{
  "id": 1,
  "nome": "Ana Silva",
  "cpf": "852.456.854-25",
  "data_matricula": "2025-10-15",
  "instrutor_id": 1
}
```

---

## Estrutura do Projeto

```bash
modulo_alunos/
├── manage.py
├── modulo_alunos/
│   ├── settings.py
│   ├── urls.py
│   └── ...
├── alunos/
│   ├── models.py
│   ├── serializers.py
│   ├── views.py
│   ├── urls.py
│   └── migrations/
├── docs/
│   └── planejamento_modulo_alunos.md
├── Dockerfile
├── requirements.txt
└── README.md
```

---

## Instalação

### A) Local

1. Clonar o repositório

```bash
git clone https://github.com/seuusuario/modulo-alunos.git
cd modulo-alunos
```

2. Criar e ativar o ambiente virtual

```bash
python -m venv venv
venv\Scripts\activate   # Windows
source venv/bin/activate # Linux/Mac
```

3. Instalar dependências

```bash
pip install -r requirements.txt
```

4. Aplicar migrações

```bash
python manage.py migrate
```

### B) Docker

1. Clonar o repositório

```bash
git clone https://github.com/seuusuario/modulo-alunos.git
cd modulo-alunos
```

2. Subir (constrói a imagem, aplica migrações e mapeia a porta 5003)

```bash
docker compose up -d
```

---

## Execução

### A) Local

1. Ativar o ambiente virtual

```bash
venv\Scripts\activate   # Windows
source venv/bin/activate # Linux/Mac
```

2. Executar o servidor (porta 5003)

```bash
python manage.py runserver 0.0.0.0:5003
```

3. Acessar

- Swagger: `http://localhost:5003/api/swagger/`
- API: `http://localhost:5003/api/v1/alunos/`

### B) Docker

- Subir em segundo plano

```bash
docker compose up -d
```

- Abrir o Swagger automaticamente (Windows)

```powershell
./scripts/up.ps1
```

- Parar

```bash
docker compose down
```

---
