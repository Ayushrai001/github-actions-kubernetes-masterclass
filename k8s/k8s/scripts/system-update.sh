#!/bin/bash

set -e

echo "Updating system..."

sudo apt update -y
sudo apt upgrade -y

sudo apt install -y \
curl \
wget \
git \
vim \
unzip \
jq \
ca-certificates \
gnupg \
lsb-release \
software-properties-common \
apt-transport-https

echo "System update completed"
