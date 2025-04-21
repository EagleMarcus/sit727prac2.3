#!/bin/bash

# Exit on any error
set -e

# Move to the root directory of the project
cd "$(dirname "$0")/.."

# Check if .env file exists
if [ ! -f .env ]; then
  echo "❌ .env file is missing!"
  exit 1
fi

# Load environment variables
source .env

echo "🔐 Logging into Docker Hub..."
docker login

echo "📤 Pushing Docker image to Docker Hub..."
docker push ${REGISTRY}/${DOCKER_USERNAME}/${IMAGE_NAME}:${TAG}

echo "✅ Docker image pushed successfully: ${REGISTRY}/${DOCKER_USERNAME}/${IMAGE_NAME}:${TAG}"
