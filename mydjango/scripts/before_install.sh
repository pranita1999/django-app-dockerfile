#!/bin/bash

# Stop and remove the previous Docker container (if it exists)
if docker ps -a | grep -q "myapp_container"; then
  docker stop myapp_container
  docker rm myapp_container
fi

# Pull the new Docker image from your container registry (e.g., Amazon ECR)
docker pull public.ecr.aws/c0k5f5m3/mydjango:latest

# Additional pre-installation steps, if needed
# For example, you might want to set environment variables, configure networking, etc.
