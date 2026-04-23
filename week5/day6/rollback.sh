#!/bin/bash

echo "🚨 ROLLBACK INITIATED!"
echo "Stopping current container..."
docker stop $(docker ps -q) || true

echo "Which version to rollback to?"
echo "1. production"
echo "2. staging"
echo "3. latest"
read -p "Choose (1/2/3): " CHOICE

if [ "$CHOICE" == "1" ]; then
    VERSION="production"
elif [ "$CHOICE" == "2" ]; then
    VERSION="staging"
else
    VERSION="latest"
fi

echo "Rolling back to $VERSION..."
docker pull skilaparthi/karthik-nginx:$VERSION
docker run -d -p 80:80 skilaparthi/karthik-nginx:$VERSION
echo "✅ Rollback to $VERSION complete!"
docker ps
