#!/bin/bash

# Stop and remove the previous Docker container (if it exists)
if docker ps -a | grep -q "myapp_container"; then
  docker stop myapp_container
  docker rm myapp_container
fi

# Additional actions, if needed
# For example, you might want to clean up any temporary files or resources used by the previous version of the application.
