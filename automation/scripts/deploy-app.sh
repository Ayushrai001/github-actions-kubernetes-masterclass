#!/bin/bash

set -e

echo "==================================="
echo "Deploying SkillPulse Application"
echo "==================================="

kubectl apply -f k8s-prod/

echo "Waiting for deployments..."

kubectl rollout status deployment/frontend -n dev
kubectl rollout status deployment/backend -n dev
kubectl rollout status deployment/mysql -n dev

echo "==================================="
echo "Deployment Successful"
echo "==================================="

kubectl get pods -n dev
kubectl get svc -n dev
