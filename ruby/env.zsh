export RUBY_YJIT_ENABLE=1

# Required to allow parallel testing in Rails 7
# with whatever combination of gems I have installed at least.
#
# This is not a good long-term option, but there doesn't
# seem to be a better workaround.
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
