# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias ga='git add'
alias gaa='git add -A'
alias gs='git status'
alias glg='git log'
alias gl='git pull --rebase'
alias glgg='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue) <%an>%Creset"'
alias glgs='git log --stat'
alias gc='git commit'
alias gp='git push'
alias gpu='git push -u'
alias gpub='git push -u ${1-origin} `git symbolic-ref --short HEAD`'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias gd='git diff'
alias gdc='git diff --cached'
alias grhh='git reset --hard HEAD'
alias grpo='git remote prune origin'
alias grbc="git rebase --continue"
