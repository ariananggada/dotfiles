#!/usr/bin/env sh

# initial configuration
ln -sf ~/dotfiles/.aliasrc ~/.aliasrc
ln -sf ~/dotfiles/.functionrc ~/.functionrc
ln -sf ~/dotfiles/.initrc ~/.initrc

# vim configuration
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# neovim configuration (sync with vim configuration)
mkdir -p ~/.config/nvim
ln -sf ~/dotfiles/.vimrc ~/.config/nvim/init.vim

