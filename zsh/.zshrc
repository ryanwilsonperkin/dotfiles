# Base16 Shell
BASE16_SHELL="$HOME/.zsh/custom/scripts/base16-ocean.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Start custom scripts
source "$HOME/.zsh/custom/aliases.zsh"

# Setup zpug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "$HOME/.zsh/custom/themes", from:local, use:"blinks-custom.zsh-theme"

zplug load

# Always use nvim as our editor
export EDITOR=nvim
