#!/bin/bash
# Added shebang for clarity and to ensure bash is used

echo "This will create a groff document"
ls -l ~/Documents/  # Added -l for better directory listing format

echo "Do you want to create a new subject? (yes/no)"
read bool

if [ "$bool" = "yes" ]; then  # Fixed syntax: quotes around $bool and removed incorrect $()
    echo "Enter name of subject:"
    read subject
    # Create directory if it doesn't exist
    mkdir -p ~/Documents/"$subject"
else
    echo "Enter the subject of the groff document:"
    ls -l ~/Documents/
    read subject
fi

echo "Enter name for the groff document:"
read name
# Validate input to prevent empty names
if [ -z "$name" ]; then
    echo "Error: Document name cannot be empty"
    exit 1
fi
# Ensure .ms extension
name="${name%.ms}.ms"
touch ~/Documents/"$subject"/"$name"
# Check if directory exists
if [ ! -d ~/Documents/"$subject" ]; then
    echo "Error: Subject directory does not exist"
    exit 1
fi
nvim ~/Documents/"$subject"/"$name"

