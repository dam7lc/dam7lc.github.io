FROM nginx:1.25-alpine
COPY contenedor/nginx.conf /etc/nginx/conf.d/default.conf
COPY contenedor/ssl /ssl
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]