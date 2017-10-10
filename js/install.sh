#!/bin/sh

if test ! $(which n); then
  echo "Installing n (node version manager) for you"
  brew install n > /tmp/n-install.log
fi
