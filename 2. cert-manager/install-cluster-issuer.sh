#!/bin/sh

echo "Enter your email for certificate purposes:"
read email

if [ -z "$email" ]; then
  echo "Email is required"
  exit 1
fi

if ! echo "$email" | grep -qE '^[^@]+@[^@]+\.[^@]+$'; then
  echo "Email is invalid"
  exit 1
fi

echo ""
echo "STEP 1/2: Installing Cluster Issuer for Staging"
echo "============================================================"
sed  "s/your@email.com/$email/" "manifest/2.1. staging-issuer.yaml" | kubectl apply -f - 

echo ""
echo "STEP 2/2: Installing Cluster Issuer for Production"
echo "============================================================"
sed  "s/your@email.com/$email/" "manifest/2.2. production-issuer.yaml" | kubectl apply -f - 