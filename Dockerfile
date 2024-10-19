# Usa l'immagine ufficiale di Nginx come base
FROM nginx:alpine

# Copia il file HTML nella directory di default di Nginx
COPY index.html /usr/share/nginx/html/

# Copia il file di configurazione personalizzato di Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Esponi la porta 80
EXPOSE 80

# Avvia Nginx quando il container viene eseguito
CMD ["nginx", "-g", "daemon off;"]