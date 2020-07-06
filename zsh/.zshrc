# Base16 Shell
BASE16_SHELL="$HOME/.zsh/custom/scripts/base16-ocean.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Setup zpug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Local config files
zplug "~/.zsh/custom", from:local

# Spaceship theme
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

zplug load

# Always use nvim as our editor
export EDITOR=nvim
