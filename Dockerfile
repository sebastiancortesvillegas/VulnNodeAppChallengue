# Usar la imagen base de Amazon Linux
FROM amazonlinux:latest

# Instalar curl, Node.js y npm
RUN yum update -y && \
    yum install -y curl && \
    curl -fsSL https://rpm.nodesource.com/setup_18.x | bash - && \
    yum install -y --allowerasing nodejs

# Establecer el directorio de trabajo
ENV WORKDIR /opt/vuln-node-app
WORKDIR $WORKDIR

# Copiar la aplicación al directorio de trabajo
COPY . .

# Instalar las dependencias de la aplicación
RUN npm install

# Exponer el puerto 3000
EXPOSE 3000

# Comando de inicio de la aplicación
CMD ["npm", "start"]
