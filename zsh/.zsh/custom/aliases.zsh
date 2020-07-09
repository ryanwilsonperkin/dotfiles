# Aliases
alias vim=nvim
alias g=git
alias gst="git status"
alias gadd="git add"
alias gr="git rebase"
alias gd="git diff"
alias gb="git branch"
alias gco="git checkout"
alias gc="git commit --verbose"
alias gca="git commit --verbose --all"
alias gc!="gc --amend"
alias gca!="gca --amend"
alias ll="ls -l"
alias la="ls -la"

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
