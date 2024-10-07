#!/bin/bash
source .env
endpoint=$(read_var REGISTRY)

echo "Building and pushing dockerfile to $endpoint..."
docker build --platform=linux/amd64 -t $endpoint . && docker push $endpoint
