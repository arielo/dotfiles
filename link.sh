#!/usr/bin/env sh

DOTFILES_PATH=$(pwd)

echo "symlinking configs..."

echo "Git config..."
ln -sfvF $DOTFILES_PATH/config/.gitconfig ~/.gitconfig
ln -sfvF $DOTFILES_PATH/config/.gitignore ~/.gitignore

echo "Tmux config..."
ln -sfvF $DOTFILES_PATH/config/.tmux.conf ~/.tmux.conf

rm ~/.tmux
ln -sfvF $DOTFILES_PATH/config/tmux ~/.tmux

echo "Oh my ZSH config..."
rm ~/.oh-my-zsh
ln -sfvF $DOTFILES_PATH/config/oh-my-zsh ~/.oh-my-zsh

ln -sfvF $DOTFILES_PATH/config/.zshrc ~/.zshrc

echo "Doom Emacs config..."
rm ~/.doom.d
ln -sfvF $DOTFILES_PATH/config/doom.d ~/.doom.d

echo "ASDF Global config"
ln -sfvF $DOTFILES_PATH/config/.tool-versions ~/.tool-versions

echo "Default Python Packages"

ln -sfvF $DOTFILES_PATH/config/.default-python-packages ~/.default-python-packages

echo "Default GO lang packages"

ln -sfvF $DOTFILES_PATH/config/.default-golang-pkgs ~/.default-golang-pkgs
