#!/bin/bash

# Navigate to the project directory
cd /Users/maximlarkin/Desktop/project

# Initialize a Git repository
git init

# Add all files to the repository
git add .

# Commit the changes
git commit -m "Initial commit: Add project knowledge base"

# Add the remote repository
git remote add origin https://github.com/larmax82/productProfileProjectTool.git

# Set the main branch
git branch -M main

# Push to GitHub
git push -u origin main

echo ""
echo "Repository initialized and pushed to GitHub:"
echo "https://github.com/larmax82/productProfileProjectTool.git"