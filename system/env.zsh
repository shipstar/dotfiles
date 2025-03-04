export EDITOR="$(which code) --wait"
# temporary workaround for issue with krb5 + postgresql + pg gem
# see https://github.com/ged/ruby-pg/issues/311
export PGGSSENCMODE="disable"
