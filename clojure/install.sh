#!/bin/sh

if test ! $(which lein)
then
  echo "  Installing leiningen for you."
  brew install leiningen > /tmp/leiningen-install.log
fi
