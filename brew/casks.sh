#!/bin/sh

# Install the necessary casks.
CASKS=(
    docker
    paw
    1password
    keybase
    alfred
    google-chrome
    iterm2
    sequel-pro
)

echo ""
echo "Installing casks from Homebrew..."
echo "================================="
brew install --cask ${CASKS[@]}

echo ""
echo "Cleaning up..."
echo "========================================="
brew cleanup
