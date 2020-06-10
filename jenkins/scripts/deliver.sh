#!/bin/sh

   git pull      
   npm install --production      
   pm2 restart all
   echo "deployment completed"
