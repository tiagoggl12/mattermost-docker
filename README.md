# Mattermost Docker

Configuração Mattermost com PostgreSQL via Docker Compose.

## Quick Start

```bash
docker-compose up -d
```

Acesse: http://localhost:8065

## Instalar Plugin Google Drive

1. Baixe o plugin: https://github.com/mattermost/mattermost-plugin-google-drive/releases (versão mais recente: v1.0.0)
2. Acesse **System Console** > **Plugins** > **Management**
3. Faça upload do arquivo `.tar.gz`
4. Ative o plugin

## Configuração Google Drive

Após instalado:
1. No Mattermost, execute `/google-drive connect` para conectar sua conta Google
2. Configure o OAuth no Google Cloud Console:
   - Crie um projeto no Google Cloud
   - Ative Google Drive API
   - Crie credenciais OAuth 2.0
   - Configure o plugin com Client ID e Secret

## Test CI/CD
