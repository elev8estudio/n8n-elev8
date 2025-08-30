# Usa Node.js 20.19, compatible con n8n >= 1.106.3
FROM node:20.19

# Crea directorio de trabajo
WORKDIR /data

# Instala n8n
RUN npm install -g n8n@1.108.2

# Agrega nodos personalizados si los necesitas
# (descomenta y modifica según tu caso)
# RUN npm install -g @n8n/n8n-nodes-langchain

# Expón el puerto de n8n
EXPOSE 5678

# Ejecuta n8n sin flags obsoletos
CMD ["n8n"]
