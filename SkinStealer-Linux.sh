#!/bin/bash

# Prompt for Minecraft username
read -p "Enter Minecraft username: " USERNAME

# Check if empty
if [ -z "$USERNAME" ]; then
  echo "No username entered."
  exit 1
fi

# Output filename
OUTPUT="${USERNAME}_skin.png"

echo "Downloading skin for $USERNAME..."

# Download the skin
curl -L -o "$OUTPUT" "https://mc-heads.net/skin/$USERNAME"

# Check result
if [ -f "$OUTPUT" ]; then
  echo "Skin saved as $OUTPUT"
else
  echo "Failed to download skin."
  exit 1
fi

