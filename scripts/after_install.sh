#!/bin/bash

echo "Running after_install script"

cd /usr/src/app/median-backend-rest-api

sudo npm install
sudo npm run build
