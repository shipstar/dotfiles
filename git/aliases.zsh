# The rest of my fun git aliases
alias ga='git add'
alias gaa='git add -A'
alias gb='git branch'
alias gc='git commit'
alias gcb='git checkout -b'
alias gcl="git branch -v | grep \"\\[gone\\]\" | awk '{print \$1}'"
alias gclf="git branch -v | grep \"\\[gone\\]\" | awk '{print \$1}' | xargs -I{} git branch -D {}"
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdcw='git diff --color-words'
alias gl='git pull --rebase'
alias glg='git log'
alias glgg='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue) <%an>%Creset"'
alias glgs='git log --stat'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gpub='git push -u ${1-origin} `git symbolic-ref --short HEAD`'
alias grbc="git rebase --continue"
alias grdy="current=\$(git branch --show-current); git fetch --all --prune; git for-each-ref --format='%(refname:short) %(upstream:short)' refs/heads | awk '\$2 {print \$1}' | while read branch; do git checkout \$branch && git merge --ff-only @{upstream} || true; done; git checkout \$current; gclf"
alias grhh='git reset --hard HEAD'
alias grpo='git remote prune origin'
alias gs='git status'
