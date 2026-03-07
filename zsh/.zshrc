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

# Use emacs style line jumping in zsh
bindkey -e


