#!/bin/sh

# Install script for setting up dotfiles
# Tested for MacOS and Debian-based distros

is_macos () {
	[ "$(uname)" = "Darwin" ]
}
is_linux () {
	[ "$(uname)" = "Linux" ]
}
is_spin () {
	[ "$SPIN" = "1" ]
}

echo "[Step 1] Install programs"
if is_macos; then
	./homebrew_install.sh
	brew bundle
elif is_linux; then
	# Additional downloads
	sudo mkdir -p /usr/local/opt
	sudo chmod a+w /usr/local/opt

	# Install zplug for linux system
	export ZPLUG_HOME="/usr/local/opt/zplug"
	git clone https://github.com/zplug/zplug.git /usr/local/opt/zplug

	# Install diff-so-fancy for linux systems
	git clone https://github.com/so-fancy/diff-so-fancy.git /usr/local/opt/diff-so-fancy
	sudo ln -s /usr/local/opt/diff-so-fancy/diff-so-fancy /usr/local/bin/diff-so-fancy
fi

if is_spin; then
	sudo hostnamectl set-hostname $(cat /etc/spin/machine/instance-name)
fi

echo "[Step 2] Symlink dotfiles"
if test -f ~/.zshrc; then
	mv ~/.zshrc ~/.zshrc.original
fi
stow --target "${HOME}" ag
stow --target "${HOME}" bash
stow --target "${HOME}" config
stow --target "${HOME}" git
stow --target "${HOME}" tmux
stow --target "${HOME}" zsh

echo "[Step 3] Configure programs"
# Configure zplug
zsh -i -c "zplug check || zplug install"
#
# Configure neovim
nvim +PlugInstall +qall

# Configure git
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global diff-so-fancy.markEmptyLines false
git config --global core.excludesfile ~/.gitignore_global
git config --global init.defaultBranch main
git config --global push.default current
git config --global pull.rebase false
git config --global pull.ff only
git config --global rebase.autoStash true
git config --global rebase.autosquash true
git config --global rerere.enabled true
git config --global clean.requireForce true
