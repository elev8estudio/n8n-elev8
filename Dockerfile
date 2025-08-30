# Usa Node 20 con alpine (más ligero)
FROM node:20-alpine

# Establece el directorio de trabajo
WORKDIR /home/node/.n8n

# Instala la última versión estable de n8n (no uses latest por estabilidad)
RUN npm install -g n8n@1.68.0

# Variables de entorno mínimas para levantar n8n
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Expone el puerto interno
EXPOSE 5678

# Ejecuta primero la migración de base de datos y luego n8n
CMD ["sh", "-c", "n8n migrate:up && n8n start"]
