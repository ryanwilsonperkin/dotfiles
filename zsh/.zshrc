# Setup zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Configure spaceship-prompt
# Disable the parts I don't care about
export SPACESHIP_PACKAGE_SHOW=false
export SPACESHIP_NODE_SHOW=false
export SPACESHIP_ELIXIR_SHOW=false
export SPACESHIP_XCODE_SHOW=false
export SPACESHIP_SWIFT_SHOW=false
export SPACESHIP_PHP_SHOW=false
export SPACESHIP_RUST_SHOW=false
export SPACESHIP_HASKELL_SHOW=false
export SPACESHIP_JULIA_SHOW=false
export SPACESHIP_CONDA_SHOW=false
export SPACESHIP_DOTNET_SHOW=false
export SPACESHIP_EMBER_SHOW=false
export SPACESHIP_GCLOUD_SHOW=false

# Customize other parts
export SPACESHIP_EXEC_TIME_ELAPSED=30  # Only show "elapsed time" if >30s
export SPACESHIP_RUBY_COLOR=blue
export SPACESHIP_RUBY_SYMBOL='\uf43b '
export SPACESHIP_KUBECTL_SHOW=true
export SPACESHIP_KUBECTL_SYMBOL='\ufd31 '
export SPACESHIP_KUBECTL_VERSION_SHOW=false
export SPACESHIP_KUBECTL_CONTEXT_SHOW=true
export SPACESHIP_KUBECTL_COLOR=magenta
export SPACESHIP_KUBECONTEXT_COLOR=magenta
export SPACESHIP_NODE_SYMBOL='\uf898 '

# Local config files
zplug "~/.zsh/custom", from:local

zplug "rupa/z", use:"z.sh"
zplug "chriskempson/base16-shell", use:"scripts/base16-ocean.sh"
zplug "denysdovhan/spaceship-prompt", use:"spaceship.zsh", as:theme
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "plugins/kubectl", from:oh-my-zsh, defer:2
zplug "bonnefoa/kubectl-fzf", defer:3

zplug load

# Always use nvim as our editor
export EDITOR=nvim

# Include our own executables in the path
export PATH=$HOME/bin:${HOME}/.krew/bin:/usr/local/share/chruby:$PATH

# Use emacs style line jumping in zsh
bindkey -e

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

# cloudplatform: add Shopify clusters to your local kubernetes config
export KUBECONFIG=${KUBECONFIG:+$KUBECONFIG:}/Users/ryan/.kube/config:/Users/ryan/.kube/config.shopify.cloudplatform
