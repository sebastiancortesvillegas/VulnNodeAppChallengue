#!/bin/bash

# This script is used to start the application
cd /home/ec2-user/nodejs-aws-codedeploy-pipeline
pm2 start /usr/cddemo/bin/www -n www -f