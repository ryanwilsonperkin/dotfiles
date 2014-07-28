TERM=xterm-256color

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Name of the oh-my-zsh theme.
ZSH_THEME="blinks"

# Oh-my-zsh customizations.
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"

plugins=(brew git gitfast pip rvm screen tmux vagrant)

[ -e $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
[ -e $HOME/.rvm ] && source $HOME/.rvm/scripts/rvm 

# Always use vim as our editor
export EDITOR=vim
