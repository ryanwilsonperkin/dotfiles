set -Ux EDITOR nvim
set PATH $PATH /usr/local/opt/go/libexec/bin $HOME/go/bin
set fish_greeting ""

# Activate base-16 theme
if status --is-interactive
	if [ "$ITERM_PROFILE" = "light" ]
		set BASE16_THEME ocean-light
	else
		set BASE16_THEME ocean
	end
	eval sh $HOME/.config/base16-shell/scripts/base16-$BASE16_THEME.sh
end
set -Ux BAT_THEME "TwoDark"

# Functions
function edit
	nvim (ag -l $argv)
end

# Aliases
alias ag='ag --hidden'
alias vim='nvim'
alias myjira='jira ls -a rwilsonperkin'
alias markdown='open -a Markoff'
abbr ta 'tmux attach -t'
abbr tn 'tmux new-session -s'
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
