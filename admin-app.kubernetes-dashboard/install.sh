#!/bin/sh

DEFAULT_STEP=1
STEP=1

echo "Do you want to change default role to see all resources namespaces (y/n)?"
read answer
if [ "$answer" = "y" ]; then
  DEFAULT_STEP=$((DEFAULT_STEP + 1))
fi

print_step_name() {
  echo ""
  echo "STEP $STEP/$DEFAULT_STEP: $1"
  echo "============================================================"
  STEP=$((STEP + 1))
}

print_step_name "Installing Dashboard"
kubectl apply -f ./manifest/dashboard.yaml

if [ "$answer" = "y" ]; then
  print_step_name "Installing Default Service Controller for All Namespaces"
  kubectl apply -f ./manifest/cluster-role-binding.yaml
fi

./get_token.sh

