function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%F{blue}%}±%{%f%k%b%} "
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{%B%F{green}%}[%{%B%F{blue}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%B%F{green}%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='┌─%B%F{yellow}%}%n%{%B%F{blue}%}@%m %{%b%F{yellow}%}%~ $(_prompt_char)%{%f%k%b%}
└─ %{%f%k%b%}'
