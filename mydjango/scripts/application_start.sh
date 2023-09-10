#!/bin/bash

# Start the new Docker container with the updated image
docker run -dit --name myapp_container -p 8000:8000 public.ecr.aws/c0k5f5m3/mydjango:latest

# Additional actions, if needed
# For example, you might want to wait for the container to fully start before proceeding.
# You can use tools like 'docker-compose' or 'docker-compose-wait' for more advanced container orchestration.
