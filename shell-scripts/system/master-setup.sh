#!/bin/bash

set -e

echo "==================================="
echo "STARTING COMPLETE DEVOPS SETUP"
echo "==================================="

chmod +x *.sh

./system-update.sh
./install-docker.sh
./install-kubectl.sh
./install-awscli.sh
./install-terraform.sh
./install-helm.sh
./install-eksctl.sh
./install-k9s.sh
./install-argocd-cli.sh
./install-trivy.sh
./install-kubecolor.sh
./install-lazydocker.sh

echo "==================================="
echo "DEVOPS ENVIRONMENT READY"
echo "==================================="

echo ""
echo "Please logout and login again"
echo ""
