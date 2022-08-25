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
#install ideavim config
ln -s ~/.dotfiles/idea/.ideavimrc ~/.ideavimrc
#install fish config
cp -r ~/.dotfiles/fish ~/.config
# install terminator config
cp -r ~/.dotfiles/terminator ~/.config
# install autojump
git clone https://github.com/joelthelion/autojump.git
cd autojump
./install.py
cd ..
rm -rf autojump
# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~.fzf
cd ~/.fzf/
./install


