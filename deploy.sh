#!/bin/bash
source .env
endpoint=$(read_var REGISTRY)

echo "Building and pushing dockerfile to $REGISTRY..."
docker build -t $REGISTRY . && docker push $REGISTRY
