#!/bin/bash

# Check if xclip is installed
if ! command -v xclip &> /dev/null; then
    echo "Error: xclip is not installed. Please install it to use this script."
    exit 1
fi

# Check if the file exists
if [ ! -f "/home/jrzvnn/.keys/.pup1" ]; then
    echo "Error: .token.txt file not found."
    exit 1
fi

# Read the file and copy the content to clipboard
content=$(cat "/home/jrzvnn/.keys/.pup1")
echo -n "$content" | xclip -selection clipboard

echo "Content copied to clipboard."

