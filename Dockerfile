FROM docker.n8n.io/n8nio/n8n

# Define directorio de trabajo
WORKDIR /home/node/.n8n

# Exponer el puerto
EXPOSE 5678

# Copia variables de entorno si las usaras (no obligatorio si tienes render.yaml)
# COPY .env.production .env

# Comando por defecto
CMD ["n8n"]
