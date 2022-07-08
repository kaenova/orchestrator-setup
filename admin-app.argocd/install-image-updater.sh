#!/bin/sh

echo "STEP 1/1: Install Argocd Image Updater"
echo "============================================================"
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj-labs/argocd-image-updater/stable/manifests/install.yaml