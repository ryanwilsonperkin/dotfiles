# Source dotfiles
for file in ~/.bash_{exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Add liquid prompt https://github.com/nojhan/liquidprompt	
command -v liquidprompt > /dev/null 2>&1 && . liquidprompt

# Load RVM into a shell session *as a function*
[ -r "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm" 

# Add Git Completion
[ -r ~/.git-completion.bash ] && . ~/.git-completion.bash

# Remove beer emoticon from brew
export HOMEBREW_NO_EMOJI=1

