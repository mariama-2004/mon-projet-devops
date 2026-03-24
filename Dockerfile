# On utilise un serveur web léger (Nginx) pour afficher votre page
FROM nginx:alpine

# On copie votre fichier index.html dans le dossier du serveur web
COPY index.html /usr/share/nginx/html/index.html

# Le serveur écoutera sur le port 80
EXPOSE 80