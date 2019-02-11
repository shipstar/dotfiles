#!/bin/sh

if test ! $(which asdf); then
  echo "Installing asdf (language version manager) for you"
  brew install asdf
fi

plugins=(
  nodejs
  python
  ruby
)
for plugin in ${plugins[@]}; do
  asdf plugin-add $plugin
done

asdf install ruby 2.5.1
asdf install python 3.7.2
asdf install nodejs 11.9.0
