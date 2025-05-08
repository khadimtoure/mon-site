# Utilise Nginx comme serveur web
FROM nginx:alpine

# Copie tout le contenu du dossier courant dans Nginx
COPY . /usr/share/nginx/html

EXPOSE 80
