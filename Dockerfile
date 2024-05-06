FROM amazonlinux:latest

# Instalar curl y Node.js
RUN yum install -y curl --allowerasing && \
    curl -fsSL https://rpm.nodesource.com/setup_18.x | bash - && \
    yum install -y nodejs

# Establecer el directorio de trabajo
ENV WORKDIR /opt/vuln-node-app
WORKDIR $WORKDIR

# Copiar la aplicación al directorio de trabajo
COPY . $WORKDIR

# Instalar las dependencias de la aplicación
RUN npm install

# Exponer el puerto 3000
EXPOSE 3000

# Comando de inicio de la aplicación
CMD ["npm", "start"]

