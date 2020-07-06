# Aliases
alias vim=nvim

# Functions
# Lookup information on an IP
function ipinfo() { curl "ipinfo.io/$1" }

# Tmux
alias tn='tmux new-session -s'
alias ta='tmux attach -t'
alias tl='tmux list-sessions'
