#!/bin/bash

# Exit on any error
set -e

# Move to the root directory
cd "$(dirname "$0")/.."

# Check for .env file
if [ ! -f .env ]; then
  echo "❌ .env file is missing!"
  exit 1
fi

# Load environment variables
source .env

# Substitute and apply deployment.yaml
envsubst < scripts/deployment.yaml | kubectl apply -f -

# Apply service.yaml
echo "🔧 Applying service..."
kubectl apply -f scripts/service.yaml

echo "✅ Kubernetes deployment applied."

# Check pod status
echo "🔍 Checking pod status..."
kubectl get pods

echo "🎉 Deployment complete!"
