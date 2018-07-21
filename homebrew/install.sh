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
# Don't forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install zsh
brew install zsh zsh-completions

# Install more recent versions of some OSX tools.
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh --with-keychain-support
brew install homebrew/dupes/screen

binaries=(
  git
  hub
  nvim
  postgresql
  redis
  tree
  watch
)
brew install ${binaries[@]}

casks=(
  alfred
  atom
  caffeine
  dropbox
  firefox
  flux
  google-chrome
  google-backup-and-sync
  hyper
  imageoptim
  iterm2
  postico
  recordit
  skitch
  slack
  spotify
  the-unarchiver
)
brew cask install ${casks[@]}

echo "Can't install:

ColorSnapper
Pixelmator
Pixen
Reeder
Things

with casks. Use the Mac App Store."

# Install some fonts
brew tap caskroom/fonts

fonts=(
  font-alfa-slab-one
  font-droidsansmono-nerd-font
  font-fauna-one
  font-merriweather
  font-merriweather-sans
  font-muli
  font-oswald
  font-playfair-display
  font-playfair-display-sc
  font-podkova
  font-poller-one
  font-raleway
  font-roboto
  font-roboto-slab
  font-yanone-kaffeesatz
  font-yeseva-one
)

brew cask install ${fonts[@]}
