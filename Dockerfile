FROM amazonlinux:latest
RUN yum install -y curl \
    && curl -fsSL https://rpm.nodesource.com/setup_18.x | bash - \
    && yum install -y nodejs
# RUN git clone https://github.com/4auvar/VulnNodeApp.git (to be done base machine - AWS EC2)
ENV WORKDIR /opt/vuln-node-app
WORKDIR $WORKDIR
COPY . $WORKDIR
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
