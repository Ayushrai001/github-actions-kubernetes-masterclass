#!/bin/bash

set -e

echo "Installing AWS CLI..."

cd /tmp

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" \
-o "awscliv2.zip"

unzip -o awscliv2.zip

sudo ./aws/install --update

aws --version

echo "AWS CLI installed successfully"
