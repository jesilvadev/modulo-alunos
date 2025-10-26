# Módulo de Alunos — Sistema de Academia

Este repositório contém o **microserviço do módulo de Alunos**, desenvolvido como parte do **projeto de Processo de Software**, aplicando a metodologia **Scrum**.  
O módulo tem como objetivo **gerenciar o cadastro e controle de alunos** da academia, seguindo o contrato técnico definido no projeto.

---

## Equipe

| Integrante | Função |
|-------------|--------|
| **Jefferson Luan da Silva Alves** | Product Owner / Scrum Master |
| **Francisca Samira Aquino França** | Desenvolvedora / QA |
| **Francisca Lorrayne de Lima Santos** | Desenvolvedora / QA |
| **Maria Herculana da Silva Souza** | Desenvolvedora / QA |
| **Mateus Gomes Salomé** | Desenvolvedor |
| **Pedro Damião de Oliveira Luz** | Desenvolvedor |

---

## Objetivo do Módulo

O módulo **Alunos** tem a função de **gerenciar os cadastros de alunos da academia**, permitindo realizar operações CRUD (criar, listar, buscar, atualizar e remover) de forma independente.  
O serviço deve estar disponível via **API REST** e acessível em container **Docker**, integrando-se aos demais módulos do sistema.

---

## Tecnologias Utilizadas

- **Linguagem:** Python  
- **Framework:** Django REST Framework  
- **Banco de Dados:** SQLite  
- **Containerização:** Docker  
- **Metodologia:** Scrum  
- **Versionamento:** Git + GitHub  

---

## Especificações Técnicas do Módulo

- **Porta padrão:** `5003`  
- **Prefixo de rota:** `/api/v1/alunos`  
- **Formato das respostas:** JSON  
- **Operações obrigatórias:**
  - `POST /api/v1/alunos` → cadastrar novo aluno  
  - `GET /api/v1/alunos` → listar todos os alunos  
  - `GET /api/v1/alunos/{id}` → buscar aluno específico  
  - `PUT /api/v1/alunos/{id}` → atualizar aluno  
  - `DELETE /api/v1/alunos/{id}` → remover aluno  

### Exemplo de Estrutura JSON

```json
{
  "id": 1,
  "nome": "Ana Silva",
  "cpf": "852.456.854-25",
  "data_matricula": "2025-10-15",
  "instrutor_id": 1
}
````

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

## Execução do Projeto

### 1. Clonar o Repositório

```bash
git clone https://github.com/seuusuario/modulo-alunos.git
cd modulo-alunos
```

### 2. Criar e Ativar o Ambiente Virtual

```bash
python -m venv venv
venv\Scripts\activate   # Windows
source venv/bin/activate   # Linux/Mac
```

### 3. Instalar Dependências

```bash
pip install -r requirements.txt
```

### 4. Executar Migrações

```bash
python manage.py makemigrations
python manage.py migrate
```

### 5. Rodar o Servidor Local

```bash
python manage.py runserver 0.0.0.0:5003
```

Acesse: **[http://localhost:5003](http://localhost:5003)**

---

## Execução com Docker

### Build da imagem

```bash
docker build -t modulo-alunos .
```

### Execução do container

```bash
docker run -p 5003:5003 modulo-alunos
```

A aplicação estará disponível em:
**[http://localhost:5003/api/v1/alunos](http://localhost:5003/api/v1/alunos)**

---

## Reuniões Scrum

| Evento                   | Descrição                               | Frequência       |
| ------------------------ | --------------------------------------- | ---------------- |
| **Sprint Planning**      | Definição das tarefas e metas da sprint | Início da sprint |
| **Daily Scrum**          | Acompanhamento do progresso do time     | Diária (15 min)  |
| **Sprint Review**        | Apresentação das entregas e feedback    | Final da sprint  |

---
