#!/bin/sh

# Install script for setting up dotfiles on macOS

echo "[Step 1] Install programs"
./homebrew_install.sh
brew bundle

echo "[Step 2] Symlink dotfiles"
if test -f ~/.zshrc; then
	mv ~/.zshrc ~/.zshrc.original
fi
stow --target "${HOME}" ag
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
