# Aliases
alias vim=nvim
alias g=git
alias gst="git status"
alias gadd="git add"
alias gap="git add -p"
alias gr="git rebase"
alias gd="git diff"
alias gb="git branch --sort=-committerdate"
alias gco="git checkout"
alias gcd="git checkout-default"
alias gc="git commit --verbose"
alias gca="git commit --verbose --all"
alias gcm="git commit -m"
alias gc!="gc --amend"
alias gca!="gca --amend"
alias gp="git pull"
alias grb="git rebase"
alias grbi="git rebase --interactive"
alias grc="git rebase --continue"
alias grr="git rm -r"
alias ls="ls -G"
alias ll="ls -l"
alias la="ls -la"
alias k=kubectl
alias zupdate="source ~/.zshrc"
alias pdfcat='gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=-'
alias ag='ag --hidden'

# Functions
# Lookup information on an IP
function ipinfo() { curl "ipinfo.io/$1" }
# Edit files that match
function edit() { vim $(ag -l $@) }
# Edit files that match in VS Code
function vsedit() { code $(ag -l $@) }
function ci() { open "https://buildkite.com/shopify/${1:-web-ci-builder}/builds?branch=$(git rev-parse --abbrev-ref HEAD)" }

# Tmux
alias tn='tmux new-session -s'
alias ta='tmux attach -t'
alias tl='tmux list-sessions'

alias s="noti sleep"
