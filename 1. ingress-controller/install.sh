#!/bin/sh
echo "STEP 1/1: Installing NGINX Ingress Controller"
echo "============================================================"
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.2.1/deploy/static/provider/cloud/deploy.yaml