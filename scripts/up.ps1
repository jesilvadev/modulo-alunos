param(
    [string]$Url = "http://localhost:5003/api/docs/"
)

# Sobe o container em segundo plano
docker compose up -d

# Aguarda alguns segundos para o servidor iniciar
Start-Sleep -Seconds 3

# Abre o Swagger no navegador padrão
Start-Process $Url

