# Usa una imagen base de Node.js que ya viene con todo instalado
FROM node:18

# Crea y entra a la carpeta de trabajo
WORKDIR /home/node/.n8n

# Instala n8n de forma global (¡esta línea es la clave!)
RUN npm install -g n8n

# Expone el puerto que usa n8n
EXPOSE 5678

# Comando para ejecutar n8n
CMD ["n8n"]
