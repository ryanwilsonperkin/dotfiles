#!/bin/sh
set -euo pipefail

# Install script for setting up dotfiles on macOS

echo "[Step 1] Install programs"
if ! command -v brew >/dev/null 2>&1; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
brew update
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
# Configure neovim
nvim +PlugInstall +qall
