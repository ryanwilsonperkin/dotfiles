set -Ux EDITOR nvim

# Activate base-16 theme
if status --is-interactive
	eval sh $HOME/.config/base16-shell/scripts/base16-ocean.sh
end

# Aliases
alias vim='nvim'
abbr ta 'tmux attach -t'
abbr ts 'tmux new-session -s'
abbr tl 'tmux list-sessions'
abbr g 'git'
abbr ga 'git add'
abbr glog 'git log --oneline --decorate --graph'
abbr gst 'git status'
abbr gd 'git diff'
abbr gco 'git checkout'
abbr gc 'git commit -v'
abbr gca 'git commit -av'
abbr gc! 'git commit --amend -v'
abbr gca! 'git commit --amend -av'
abbr gb 'git branch'
abbr gba 'git branch -a'
abbr gbm 'git branch -m'
abbr grbi 'git rebase -i'

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

function fish_prompt
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  set_color normal
end
