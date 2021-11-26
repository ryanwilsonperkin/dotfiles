#!/bin/sh

# Install script for setting up dotfiles
# Tested for MacOS and Debian-based distros

is_macos () {
	[ "$(uname)" = "Darwin" ]
}
is_linux () {
	[ "$(uname)" = "Linux" ]
}

echo "[Step 1] Install programs"
if is_macos; then
	brew bundle
elif is_linux; then
	sudo xargs -a debian-packages.txt apt-get install -y
fi

echo "[Step 2] Symlink dotfiles"
stow --target "${HOME}" ag
stow --target "${HOME}" bash
stow --target "${HOME}" config
stow --target "${HOME}" git
stow --target "${HOME}" tmux
stow --target "${HOME}" zsh
