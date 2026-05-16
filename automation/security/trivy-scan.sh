#!/bin/bash

set -e

echo "======================================="
echo "Running Trivy Security Scan"
echo "======================================="

echo "[1/2] Scanning Backend Image..."

trivy image ayushrai0001/skillpulse-backend:latest

echo "[2/2] Scanning Frontend Image..."

trivy image ayushrai0001/skillpulse-frontend:latest

echo "======================================="
echo "Security Scan Completed"
echo "======================================="
