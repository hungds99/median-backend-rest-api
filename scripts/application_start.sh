#!/bin/bash

echo "Running application_start script"

cd /usr/src/app/median-backend-rest-api

pm2 start dist/src/main.js --watch
