#!/bin/bash

# This script is used to stop application
cd cd /home/ec2-user/nodejs-aws-codedeploy-pipeline
pm2 stop www || true