#!/usr/bin/env bash

echo ""
echo "Installing Git..."
echo "===================================="
brew install git

echo -n "Your name: "
read -r
name="$REPLY"

echo -n "Your email: "
read -r
email=$REPLY

echo ""
echo "Adding Git credentials..."
echo "===================================="
git config --global user.name "$name"
git config --global user.email "$email"

echo ""
echo "Your credentials are:"
echo "===================================="
git config -l | grep user
