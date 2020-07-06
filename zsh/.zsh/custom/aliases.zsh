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
alias gc!="git commit --verbose --amend"
alias gca!="git commit --verbose --all --amend"
alias ll="ls -l"
alias la="ls -la"

# Functions
# Lookup information on an IP
function ipinfo() { curl "ipinfo.io/$1" }

# Tmux
alias tn='tmux new-session -s'
alias ta='tmux attach -t'
alias tl='tmux list-sessions'
