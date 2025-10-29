FROM ubuntu:22.04

# Instalar Git, Apache y herramientas necesarias
RUN apt update && apt install -y git apache2 openssh-client && rm -rf /var/lib/apt/lists/*

# Crear directorio para la web
WORKDIR /var/www/html

# Añadir github.com al known_hosts (evita el prompt)
RUN mkdir -p ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# Exponer el puerto HTTP
EXPOSE 80

# Arrancar Apache
CMD ["apache2ctl", "-D", "FOREGROUND"]
