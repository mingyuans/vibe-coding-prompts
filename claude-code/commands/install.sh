#!/bin/bash

# Claude Code commands installation script
# Copy all files from commands directory to ~/.claude/commands directory

set -e

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR"
TARGET_DIR="$HOME/.claude/commands"

echo "Installing Claude Code commands..."
echo "Source directory: $SOURCE_DIR"
echo "Target directory: $TARGET_DIR"

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Copy all files except this script
for file in "$SOURCE_DIR"/*; do
    filename=$(basename "$file")
    
    # Skip this script
    if [ "$filename" = "install.sh" ]; then
        continue
    fi
    
    # Copy file or directory
    if [ -f "$file" ]; then
        echo "Copying file: $filename"
        cp "$file" "$TARGET_DIR/"
    elif [ -d "$file" ]; then
        echo "Copying directory: $filename"
        cp -r "$file" "$TARGET_DIR/"
    fi
done

echo "Installation complete! All commands copied to $TARGET_DIR"
echo ""
echo "Installed files:"
ls -la "$TARGET_DIR"