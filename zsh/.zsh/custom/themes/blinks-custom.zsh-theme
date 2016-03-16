function _vcs_info() {
  echo "%{%F{blue}%}${vcs_info_msg_0_}%{%f%k%b%} "
}

function _virtualenv_info() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    echo "%{%F{green}%}(${VIRTUAL_ENV##*/})%{%f%k%b%} "
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{%B%F{green}%}[%{%B%F{blue}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%B%F{green}%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='┌─%B%F{yellow}%}%n%{%B%F{blue}%}@%m %{%b%F{yellow}%}%~ $(_vcs_info)$(_virtualenv_info)%{%f%k%b%}
└─ %{%f%k%b%}'
