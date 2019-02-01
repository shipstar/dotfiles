# In ZSH, $path is an array while $PATH is a string.
# Modifying one apparently modifies the other.
# See http://superuser.com/questions/598810/zsh-config-to-export-or-not-to-export/598924#598924
# for more info.
path=(
  ./bin
  /usr/local/bin
  /usr/local/sbin
  $ZSH/bin
  ./node_modules/.bin
  $path
)

# ensure asdf shims take precedence over homebrew
# for e.g. ruby, python, node
# FIXME: There must be a better way to do this
. $HOME/.asdf/asdf.sh

export PATH
