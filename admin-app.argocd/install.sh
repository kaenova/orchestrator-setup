#!/bin/sh

echo "STEP 1/2: Creating Argocd Namespace"
echo "============================================================"
kubectl create namespace argocd

echo ""
echo "STEP 2/2: Installing Argocd"
echo "============================================================"
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml