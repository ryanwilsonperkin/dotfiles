# Base16 Shell
BASE16_SHELL="$HOME/.zsh/custom/scripts/base16-tomorrow.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.zsh/oh-my-zsh
ZSH_CUSTOM=$HOME/.zsh/custom

# Name of the oh-my-zsh theme.
ZSH_THEME="blinks-custom"

# Oh-my-zsh customizations.
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"

# Disable virtualenv prompt (customized in prompt theme)
VIRTUAL_ENV_DISABLE_PROMPT=1

plugins=(git gitfast tmux tmuxinator)

# Always use vim as our editor
export EDITOR=vim

# Required NVM variables
export NVM_DIR=$HOME/.nvm
export NVM_SCRIPT=/usr/local/opt/nvm/nvm.sh

# Required RVM variables
export RVM_SCRIPT=$HOME/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin"

# Start oh-my-zsh
[ -e $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
