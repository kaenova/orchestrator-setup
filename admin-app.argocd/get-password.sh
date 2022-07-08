#!/bin/sh

echo "Argocd Default Email and Password"
echo "============================================================"
echo "Username: admin"
echo "Password:"
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d