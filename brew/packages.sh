#!/bin/sh

# Install the necessary packages.
PACKAGES=(
    wget
    git
    git-extras
    golang
    jq
)

echo ""
echo "Installing packages from Homebrew..."
echo "===================================="
brew install ${PACKAGES[@]}

echo ""
echo "Installing PHP8 from Homebrew..."
echo "===================================="
brew tap shivammathur/php
brew install shivammathur/php/php@8.0
brew link --overwrite --force php@8.0

echo ""
echo "Cleaning up..."
echo "========================================="
brew cleanup
