FROM ubuntu:22.04

RUN apt-get update && \ 
    apt-get install -y nginx && \
    apt-get clean

# Remove default ngnix HTML
RUN rm -rf /var/www/html/*

COPY index.html /var/www/html/

EXPOSE 8080

# Start nginx
CMD ["nginx", "-g", "daemon off;"]