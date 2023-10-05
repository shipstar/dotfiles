export EDITOR=$(which nvim)
export HOMEBREW_NO_AUTO_UPDATE=1
# temporary workaround for issue with krb5 + postgresql + pg gem
# see https://github.com/ged/ruby-pg/issues/311
export PGGSSENCMODE="disable"
