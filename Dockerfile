# Usa una imagen base de Node.js
FROM node:18

# Crea y entra en el directorio de trabajo
WORKDIR /home/node/.n8n

# Instala n8n de forma global (usa una versión específica y estable si quieres más control)
RUN npm install -g n8n@1.44.0

# Expone el puerto que n8n usa
EXPOSE 5678

# Comando para ejecutar n8n
CMD ["n8n", "start"]
