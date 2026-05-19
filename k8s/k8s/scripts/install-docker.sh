#!/bin/bash

set -e

echo "Installing Docker..."

curl -fsSL https://get.docker.com | sudo sh

sudo systemctl enable docker
sudo systemctl start docker

sudo usermod -aG docker ubuntu

docker --version

echo "Docker installed successfully"
