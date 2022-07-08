#!/bin/sh

echo "STEP 1/2: Creating Argocd Namespace"
echo "============================================================"
kubectl create namespace argocd

echo ""
echo "STEP 2/2: Installing Argocd"
echo "============================================================"
kubectl apply -n argocd -f ./manifests/argocd.yaml

echo ""
echo "============================================================"
echo "Username: admin"
echo "Password:"
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d