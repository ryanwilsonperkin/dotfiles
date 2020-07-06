# Setup zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Local config files
zplug "~/.zsh/custom", from:local

zplug "rupa/z", use:"z.sh", from:github
zplug "chriskempson/base16-shell", use:"scripts/base16-ocean.sh", from:github
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

zplug load

# Always use nvim as our editor
export EDITOR=nvim
