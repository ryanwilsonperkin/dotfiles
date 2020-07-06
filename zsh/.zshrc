# Base16 Shell
BASE16_SHELL="$HOME/.zsh/custom/scripts/base16-ocean.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Start custom scripts
source "$HOME/.zsh/custom/aliases.zsh"

# Setup zpug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.zsh/oh-my-zsh
ZSH_CUSTOM=$HOME/.zsh/custom

# Name of the oh-my-zsh theme.
ZSH_THEME="blinks-custom"

# Always use nvim as our editor
export EDITOR=nvim
