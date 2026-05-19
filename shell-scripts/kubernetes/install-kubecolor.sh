#!/bin/bash

set -e

echo "Installing kubecolor..."

curl -LO \
https://github.com/hidetatz/kubecolor/releases/latest/download/kubecolor_0.4.0_linux_amd64.tar.gz

tar -xvf kubecolor_0.4.0_linux_amd64.tar.gz

sudo mv kubecolor /usr/local/bin/

kubecolor --version

echo "kubecolor installed successfully"
