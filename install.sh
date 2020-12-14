#!/bin/bash

#install tmux config
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/tmux/.tmux.conf.local ~/.tmux.conf.local
#install vim config
ln -s ~/.dotfiles/vim ~/.vim
#install ranger config
ln -s ~/.dotfiles/ranger ~/.config/ranger
#install nvim config
ln -s ~/.dotfiles/nvim ~/.config/nvim
#install fish config
cp -r ~/.dotfiles/fish ~/.config

