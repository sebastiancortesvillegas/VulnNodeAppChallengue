# Usar la imagen base de Amazon Linux
FROM amazonlinux:latest

# Actualizar los paquetes y luego instalar curl
RUN yum update -y && \
    yum install -y curl

# Eliminar la versión problemática de curl-minimal
RUN yum remove -y curl-minimal-8.5.0-1.amzn2023.0.3.x86_64

# Instalar Node.js y npm
RUN curl -fsSL https://rpm.nodesource.com/setup_18.x | bash - && \
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
