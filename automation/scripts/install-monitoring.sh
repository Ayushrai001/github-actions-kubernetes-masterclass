#!/bin/bash

set -e

echo "======================================="
echo "Installing Monitoring Stack"
echo "======================================="

echo "[1/5] Creating monitoring namespace..."

kubectl create namespace monitoring \
--dry-run=client -o yaml | kubectl apply -f -

echo "[2/5] Adding Helm repository..."

helm repo add prometheus-community \
https://prometheus-community.github.io/helm-charts || true

echo "[3/5] Updating Helm repositories..."

helm repo update

echo "[4/5] Installing kube-prometheus-stack..."

helm upgrade --install monitoring \
prometheus-community/kube-prometheus-stack \
-n monitoring \
-f automation/monitoring/prometheus-values.yaml

echo "[5/5] Exposing Grafana..."

kubectl expose svc monitoring-grafana \
-n monitoring \
--type=LoadBalancer \
--target-port=3000 \
--name=grafana-service || true

echo "======================================="
echo "Monitoring Stack Installed Successfully"
echo "======================================="
