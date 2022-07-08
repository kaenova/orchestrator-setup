#!/bin/sh

echo ""
echo "Token for Kubernetes Dashboard Default Service Controller"
echo "============================================================"
NAME=$(kubectl -n kube-system get secret -o name | grep -oP "deployment-controller-token-\S.*")
kubectl -n kube-system describe secret $NAME