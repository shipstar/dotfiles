#!/bin/sh

# inspired by https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh
# and http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

# Install command-line tools using Homebrew.

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we're using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Donâ€™t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install zsh
brew install zsh

# Install more recent versions of some OSX tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh --with-keychain-support
brew install homebrew/dupes/screen

binaries=(
  git
  hub
  postgresql
  redis
  tree
  watch
)
brew install ${binaries[@]}

# Install brew services
brew tap homebrew/boneyard

# Install Mac apps
brew install caskroom/cask/brew-cask

# Access to betas for Chrome Canary, Sublime Text, etc
brew tap caskroom/versions

casks=(
  alfred
  atom
  caffeine
  dropbox
  firefox
  flowdock
  flux
  google-chrome
  google-drive
  iterm2
  java
  mailbox
  mou
  psequel
  recordit
  sequel-pro
  skype
  slack
  sublime-text3
  the-unarchiver
  things
  virtualbox
)
brew cask install ${casks[@]}

echo "Can't install:

pixelmator
reeder

with casks. Use the Mac App Store."

# Ensure that homebrew-cask apps are available to alfred
brew cask alfred link

# Install some fonts
brew tap caskroom/fonts

fonts=(
  font-alfa-slab-one
  font-podkova
  font-poller-one
  font-raleway
  font-roboto
  font-roboto-slab
  font-yanone-kaffeesatz
)
