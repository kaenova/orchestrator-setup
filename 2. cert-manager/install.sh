#!/bin/sh

echo "STEP 1/1: Installing cert-manager"
echo "============================================================"
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.8.2/cert-manager.yaml