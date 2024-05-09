#!/bin/bash

# This script is executed before copying the source

yum -y update

curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
yum -y install nodejs

npm install -g pm2
pm2 update

export app_root=/home/ec2-user/nodejs-aws-codedeploy-pipeline
if [ -d "$app_root" ];then
    rm -rf /home/ec2-user/nodejs-aws-codedeploy-pipeline
    mkdir -p /home/ec2-user/nodejs-aws-codedeploy-pipeline
else
    mkdir -p /home/ec2-user/nodejs-aws-codedeploy-pipeline
fi