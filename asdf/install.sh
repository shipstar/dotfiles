#!/bin/sh

if test ! $(which asdf); then
  echo "Installing asdf (language version manager) for you"
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.5.0 > /tmp/asdf-install.log
fi

plugins=(
  nodejs
  ruby
)
for plugin in ${plugins[@]}; do
  asdf plugin-add $plugin
done
