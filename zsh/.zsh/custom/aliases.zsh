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
alias gc!="gc --amend"
alias gca!="gca --amend"
alias gp="git pull"
alias grb="git rebase"
alias grbi="git rebase --interactive"
alias ls="ls -G"
alias ll="ls -l"
alias la="ls -la"
alias k=kubectl
alias s=shopify
alias zupdate="source ~/.zshrc"
alias pdfcat='gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=-'

# Functions
# Lookup information on an IP
function ipinfo() { curl "ipinfo.io/$1" }
# Edit files that match
function edit() { vim $(ag -l $@) }
# Edit files that match in VS Code
function vsedit() { code $(ag -l $@) }

# Tmux
alias tn='tmux new-session -s'
alias ta='tmux attach -t'
alias tl='tmux list-sessions'
