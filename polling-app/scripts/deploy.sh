#!/bin/bash
set -e

BRANCH=$1

if [ "$BRANCH" == "dev" ]; then
  echo "Deploying to DEV environment..."
  kubectl apply -f polling-app/dev/namespace.yaml
  kubectl apply -f polling-app/dev/
elif [ "$BRANCH" == "prod" ]; then
  echo "Deploying to PROD environment..."
  kubectl apply -f polling-app/prod/namespace.yaml
  kubectl apply -f polling-app/prod/
else
  echo "Unknown branch: $BRANCH"
  exit 1
fi
