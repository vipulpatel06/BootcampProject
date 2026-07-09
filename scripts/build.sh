#!/bin/bash

echo "========== BUILD STAGE =========="

FILES=(
  "index.html"
  "Dockerfile"
  "deployment.yaml"
  "service.yaml"
)

for file in "${FILES[@]}"; do
    if [ -f "$file" ]; then
        echo "✔ Found: $file"
    else
        echo "✘ Missing: $file"
        exit 1
    fi
done

echo "All required files are present."
echo "Build stage completed successfully."