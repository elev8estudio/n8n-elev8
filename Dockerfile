# Usa Node 18, compatible con n8n
FROM node:18

# Crea directorio de trabajo
WORKDIR /data

# Instala la versión exacta que soporta tu base de datos
RUN npm install -g n8n@1.106.3

# Agrega nodos personalizados que necesitas
RUN npm install -g @n8n/n8n-nodes-langchain

# Expón el puerto por defecto de n8n
EXPOSE 5678

# Inicia n8n (sin --migrate)
CMD ["n8n"]
