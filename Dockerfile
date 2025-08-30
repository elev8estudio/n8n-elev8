# Usa Node 20 (trae los Web APIs como File/Blob que n8n espera)
FROM node:20-alpine

# Crear carpeta de trabajo (n8n usa /home/node/.n8n por defecto)
WORKDIR /home/node/.n8n

# Instala n8n fijando una versión estable (evita "latest")
# Puedes usar la que te haya funcionado antes; aquí dejo un ejemplo:
RUN npm install -g n8n@1.60.0

# Variables de entorno de escucha
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Exponer el puerto interno
EXPOSE 5678

# Ejecuta n8n (mejor explícito)
CMD ["n8n","start"]
