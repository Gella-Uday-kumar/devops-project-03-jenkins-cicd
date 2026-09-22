#!/bin/bash
echo "Running health check..."
curl -f http://localhost || { echo "Health check failed."; exit 1; }
echo "Health check passed."
