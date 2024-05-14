#!/bin/bash

echo "Running before_install script"

sudo yum update -y
sudo pkill -f pm2
