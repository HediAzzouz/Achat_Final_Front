# Utilisez une image Nginx de base comme point de départ
FROM nginx

# Supprimez la configuration par défaut de Nginx
RUN rm -rf /etc/nginx/conf.d

# Copiez les fichiers de votre application Angular dans le répertoire de travail de Nginx
COPY C:/Work/Workspace-Intellij/crud-tuto-front /usr/share/nginx/html


# Exposez le port 80, qui est le port par défaut pour HTTP
EXPOSE 80

# Commande d'entrée pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
