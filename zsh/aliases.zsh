alias reload!='. ~/.zshrc'
# https://askubuntu.com/questions/22037/aliases-not-available-when-using-sudo
alias sudo='sudo '
alias vim="nvim"

# jump to common directories
j() {
  case "$1" in
    "mb"|"mostlybits")
      cd ~/Code/mostlybits
      ;;
    "hutch"|"hs"|"h")
      cd ~/Code/mostlybits/hutch
      ;;
    "bl"|"brightline")
      cd ~/Code/brightline
      ;;
    "reef")
      cd ~/Code/brightline/reef
      ;;
    "ios"|"ica")
      cd ~/Code/brightline/ios-caregiver-app
      ;;
    "android"|"aca")
      cd ~/Code/brightline/android-caregiver-app
      ;;
    *)
      echo "Unknown location. Available shortcuts:"
      echo "  mb, mostlybits -> ~/Code/mostlybits"
      echo "  hutch, hs, h   -> ~/Code/mostlybits/hutch"
      echo "  bl, brightline -> ~/Code/brightline"
      echo "  reef           -> ~/Code/brightline/reef"
      echo "  ios, ica       -> ~/Code/brightline/ios-caregiver-app"
      echo "  android, aca   -> ~/Code/brightline/android-caregiver-app"
      ;;
  esac
}
