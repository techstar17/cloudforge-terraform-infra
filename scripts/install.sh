#!/bin/bash

set -e

echo "Updating system..."
apt-get update -y
apt-get upgrade -y

echo "Installing dependencies..."
apt-get install -y docker.io nginx git curl

echo "Starting Docker..."
systemctl start docker
systemctl enable docker

usermod -aG docker ubuntu || true

echo "Starting Nginx..."
systemctl start nginx
systemctl enable nginx

echo "Creating app directory..."
mkdir -p /home/ubuntu/app

echo "Base setup complete"
echo "<h1>CloudForge Server Ready</h1>" > /var/www/html/index.html