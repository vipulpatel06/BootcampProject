#!/bin/bash

echo "========== TEST STAGE =========="

# Check if index.html exists
if [ ! -f index.html ]; then
    echo "❌ index.html not found"
    exit 1
fi

echo "✅ index.html found"

# Check page title
if grep -q "<title>Vipul CI/CD Demo</title>" index.html; then
    echo "✅ Title test passed"
else
    echo "❌ Title test failed"
    exit 1
fi

# Check heading
if grep -q "Welcome to My CI/CD Demo" index.html; then
    echo "✅ Heading test passed"
else
    echo "❌ Heading test failed"
    exit 1
fi

# Check HTML tags
for tag in "<html" "<head>" "<body>"; do
    if grep -q "$tag" index.html; then
        echo "✅ Found $tag"
    else
        echo "❌ Missing $tag"
        exit 1
    fi
done

echo "==============================="
echo "All tests passed!"