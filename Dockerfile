# syntax=docker/dockerfile:1
FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

# Sistema: dependências mínimas para build de pacotes Python (se necessário)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
 && rm -rf /var/lib/apt/lists/*

# Instala dependências
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copia código
COPY . /app

EXPOSE 5003

# Comando padrão (ajustado no docker-compose para também rodar migrações)
CMD ["python", "manage.py", "runserver", "0.0.0.0:5003"]


