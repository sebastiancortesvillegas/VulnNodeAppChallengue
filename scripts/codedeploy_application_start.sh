#!/bin/bash
cd /home/ubuntu/Nodeapp-vulnode
pm2 delete server
pm2 start app.js

