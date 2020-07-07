# Setup zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Local config files
zplug "~/.zsh/custom", from:local

zplug "rupa/z", use:"z.sh"
zplug "chriskempson/base16-shell", use:"scripts/base16-ocean.sh"
zplug "denysdovhan/spaceship-prompt", use:"spaceship.zsh", as:theme
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug load

# Always use nvim as our editor
export EDITOR=nvim
