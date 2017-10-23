#!/bin/sh

if test ! $(which n); then
  echo "Installing n (node version manager) for you"
  brew install n > /tmp/n-install.log
fi

if test ! $(which yarn); then
  echo "Installing yarn"
  brew install yarn > /tmp/yarn-install.log
fi
