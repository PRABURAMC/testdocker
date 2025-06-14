FROM ubuntu:latest

# Update package list and install Apache
RUN apt update && apt install -y apache2

# Expose port 80 for HTTP traffic
EXPOSE 80
COPY index.html /var/www/html/index.html
# Keep Apache running in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]