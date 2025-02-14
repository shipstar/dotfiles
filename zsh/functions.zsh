hl () {
  pbpaste | highlight --syntax=$1 -O rtf -K 44 $2 | pbcopy
}

# naming this tst to avoid conflict with the built-in test command
tst(){
  if [ -f "./bin/test" ]; then
    ./bin/test "$@"
  elif [ -f "./script/test" ]; then
    ./script/test "$@"
  elif [ -f "./bin/rspec" ]; then
    bin/rspec "$@"
  elif [ -f "./bin/rails" ]; then
    bin/rails test:all "$@"
  else
    echo "idk how";
  fi
}
