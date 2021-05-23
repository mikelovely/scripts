#!/bin/sh

if test ! $(which brew); then
    echo "Now installing Homebrew..."
    echo ""
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Homebrew already installed."
    echo ""
fi

echo "Updating Homebrew..."
echo ""
brew update
