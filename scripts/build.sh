#!/bin/bash

# Exit script on error
set -e

# Move to project root (where Dockerfile and .env are located)
cd "$(dirname "$0")/.."

# Check if .env file exists
if [ ! -f .env ]; then
  echo "❌ .env file is missing!"
  exit 1
fi

# Load environment variables
source .env

echo "🔧 Building Docker image..."

# Build the Docker image using variables from .env
docker build -t ${REGISTRY}/${DOCKER_USERNAME}/${IMAGE_NAME}:${TAG} .

echo "✅ Docker image built: ${REGISTRY}/${DOCKER_USERNAME}/${IMAGE_NAME}:${TAG}"
