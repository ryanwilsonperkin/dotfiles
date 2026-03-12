# Aliases
alias vim=nvim
alias ls="ls -G"
alias ll="ls -l"
alias la="ls -la"
alias k=kubectl
alias zupdate="source ~/.zshrc"
alias n="noti"
alias s="noti sleep"
alias π=pi

# Functions
function edit() { $EDITOR $(rg -l $@) }
function vedit() { $VISUAL $(rg -l $@) }
function take() { mkdir "$1" && cd "$1" }

# Notify phone
function ntfy() { curl -d "$*" "https://ntfy.sh/$NTFY_TOPIC" }

# Tmux
alias tn='tmux new-session -s'
alias ta='tmux attach -t'
alias tl='tmux list-sessions'
