# Imagen base recomendada
FROM node:20-alpine

# Crear directorio de trabajo
WORKDIR /home/node/.n8n

# Instalar versión estable reciente de n8n
RUN npm install -g n8n@1.68.0

# Variables mínimas necesarias
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Exponer puerto
EXPOSE 5678

# Ejecutar n8n con migración incluida
CMD ["n8n", "start", "--tunnel", "--migrate"]
