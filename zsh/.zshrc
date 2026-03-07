# Plugins via Homebrew
fpath+=("$HOMEBREW_PREFIX/share/zsh/site-functions")
# compinit initializes the completion system but is slow (~300ms) because
# it scans all completion files and rebuilds the dump. To speed up shell
# startup, we only run the full compinit once every 24 hours. On subsequent
# launches we use compinit -C which skips the scan and loads the cached
# dump file (~/.zcompdump) directly.
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

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
