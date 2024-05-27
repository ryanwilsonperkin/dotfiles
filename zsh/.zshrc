# Setup zplug
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

# Lots of history
export HISTSIZE=1000000000
export SAVEHIST="${HISTSIZE}"

# Setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Local config files
zplug "~/.zsh/custom", from:local

zplug "rupa/z", use:"z.sh"
zplug "chriskempson/base16-shell", use:"scripts/base16-ocean.sh"
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/kubectl", from:oh-my-zsh, defer:2
zplug "bonnefoa/kubectl-fzf", defer:3
zplug "Aloxaf/fzf-tab", defer:3

zplug load

# Always use nvim as our editor
export EDITOR=nvim

# Include our own executables in the path
export PATH=$HOME/bin:${HOME}/.krew/bin:/usr/local/share/chruby:$PATH

# Use emacs style line jumping in zsh
bindkey -e

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

# cloudplatform: add Shopify clusters to your local kubernetes config
export KUBECONFIG=${KUBECONFIG:+$KUBECONFIG:}/Users/ryan/.kube/config:/Users/ryan/.kube/config.shopify.cloudplatform

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }

[[ -x /usr/local/bin/brew ]] && eval $(/usr/local/bin/brew shellenv)
