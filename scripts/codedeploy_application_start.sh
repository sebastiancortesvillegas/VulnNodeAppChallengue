#!/bin/bash 

# ECR Login
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 960917724930.dkr.ecr.us-east-1.amazonaws.com

# Eliminar la imagen anterior si existe
docker image rm -f 960917724930.dkr.ecr.us-east-1.amazonaws.com/vulnnodeapp:latest

# Pulling image from ECR
docker pull 960917724930.dkr.ecr.us-east-1.amazonaws.com/vulnnodeapp:latest

# Creating and starting a docker container using a new image
docker run -d -p 3000:3000 960917724930.dkr.ecr.us-east-1.amazonaws.com/vulnnodeapp:latest
