# Plugins via Homebrew
fpath+=("$HOMEBREW_PREFIX/share/zsh/site-functions")
autoload -Uz compinit && compinit

# Local config files
source ~/.zsh/custom/*.zsh
autoload -Uz promptinit && promptinit && prompt pure

source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOMEBREW_PREFIX/etc/profile.d/z.sh"
source "$HOMEBREW_PREFIX/opt/fzf-tab/share/fzf-tab/fzf-tab.zsh"

# Always use nvim as our editor
export EDITOR=nvim

# Include our own executables in the path
export PATH=$HOME/bin:${HOME}/.krew/bin:/usr/local/share/chruby:$PATH

# Setup kubeconfig
export KUBECONFIG=${HOME}/.kube/config:${HOME}/.kube/config.shopify.cloudplatform

# Use emacs style line jumping in zsh
bindkey -e

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

if [ -z "${TRY_LOADED}" ] && command -v -- "try" >/dev/null 2>&1 ; then
	export TRY_LOADED=1
	eval "$(try init)"
fi


[[ -f /opt/dev/sh/chruby/chruby.sh ]] && { type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; } }


# Added by tec agent
[[ -x /Users/ryan/.local/state/tec/profiles/base/current/global/init ]] && eval "$(/Users/ryan/.local/state/tec/profiles/base/current/global/init zsh)"
