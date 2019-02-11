#!/bin/sh

echo "Installing puma-dev..."

brew install puma/puma/puma-dev

sudo puma-dev -setup
puma-dev -install -timeout 180m

echo "You will need to install symlinks for the apps you want to run."
echo "See https://github.com/puma/puma-dev#app-usage for more info."
