#!/bin/bash

# Start the new Docker container with the updated image
docker run -dit --name myapp_container -p 8000:8000 public.ecr.aws/c0k5f5m3/mydjango:latest

# Additional post-installation steps, if needed
# These steps could include database migrations, cache clearing, or other application-specific tasks
# For example:
# - Run database migrations: python manage.py migrate
# - Collect static files: python manage.py collectstatic --noinput
# - Restart any background workers or services
