FROM node:20-alpine

WORKDIR /home/node/.n8n

# Versión estable compatible con el comando migrate:up
RUN npm install -g n8n@1.67.0

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

EXPOSE 5678

# Ejecuta migración antes de iniciar n8n
CMD ["sh", "-c", "n8n migrate:up && n8n start"]
