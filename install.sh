#!/bin/sh

# Install script for setting up dotfiles on macOS

echo "[Step 1] Install programs"
./homebrew_install.sh
brew bundle

echo "[Step 2] Symlink dotfiles"
if test -f ~/.zshrc; then
	mv ~/.zshrc ~/.zshrc.original
fi
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
