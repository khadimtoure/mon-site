# Image de base
FROM nginx:alpine

# Copie tes fichiers HTML/CSS vers Nginx
COPY src /usr/share/nginx/html

EXPOSE 80
