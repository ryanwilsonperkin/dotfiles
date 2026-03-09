# Git aliases
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
alias gw="git worktree"

# Git functions
function gmb() {git merge-base origin/main HEAD}
function gdm() {git diff $(gmb) $@}
function glm() {git log --pretty=oneline $@ $(gmb)..}
