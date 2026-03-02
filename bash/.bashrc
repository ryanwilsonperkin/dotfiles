[ -n "$PS1" ] && source ~/.bash_profile

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# load dev, but only if present and the shell is interactive
if [[ -f /opt/dev/dev.sh ]] && [[ $- == *i* ]]; then
  source /opt/dev/dev.sh
fi

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && { type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; } }

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

# cloudplatform: add Shopify clusters to your local kubernetes config
export KUBECONFIG=${KUBECONFIG:+$KUBECONFIG:}/Users/ryan/.kube/config:/Users/ryan/.kube/config.shopify.cloudplatform

# Added by tec agent
[[ -x /Users/ryan/.local/state/tec/profiles/base/current/global/init ]] && [[ $- == *i* ]] && eval "$(/Users/ryan/.local/state/tec/profiles/base/current/global/init bash)"
