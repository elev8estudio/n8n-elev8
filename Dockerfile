FROM n8nio/n8n:1.68.0

# Render necesita exponer el puerto correctamente
EXPOSE 5678

# No sobreescribimos CMD porque la imagen oficial ya ejecuta correctamente:
# `n8n start` (y maneja migraciones automáticas si está bien configurado)
