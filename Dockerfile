FROM docker.n8n.io/n8nio/n8n

# Exponer el puerto
EXPOSE 5678

# Crear directorio de trabajo
WORKDIR /home/node/.n8n

# Copiar variables si decides no usar render.yaml (aunque ya lo haces bien)
# COPY .env.production .env

# Comando por defecto
CMD ["n8n"]
