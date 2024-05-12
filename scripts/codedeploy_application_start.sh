#!/bin/bash 

#ECR Login
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 960917724930.dkr.ecr.us-east-1.amazonaws.com

#Pulling image from ECR
docker pull 960917724930.dkr.ecr.us-east-1.amazonaws.com/vulnnodeapp:latest

#Creating and starting a docker container using a new image
docker run -p 80:80 --rm 960917724930.dkr.ecr.us-east-1.amazonaws.com/vulnnodeapp:latest

