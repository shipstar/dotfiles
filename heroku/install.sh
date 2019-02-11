#!/bin/sh

brew tap heroku/brew && brew install heroku

# Warning! May not work if `reload!` is not available at
# this step of installation
reload!
# will prompt for Heroku login
heroku autocomplete --refresh-cache
