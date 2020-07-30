#!/usr/bin/env bash

# ajouter .bashrc_custom a la fin de .bashrc:
# echo "if [ -t 0 ];then . ~/.bashrc_custom; fi" >> ~/.bashrc
#
# installer junegunn/vim-plug

echo ".files"

cd $HOME
mkdir -p $HOME/.vim/swapfiles
mkdir -p $HOME/.vim/config
mkdir -p $HOME/.config/nvim

echo "Linking dotfile..."
ln -fs .files/.bashrc_custom
ln -fs .files/.tmux.conf
ln -fs .files/.vimrc
ln -fs $HOME/.files/coc.vim $HOME/.vim/config/coc.vim
ln -fs $HOME/.files/init.vim $HOME/.config/nvim/init.vim

echo "Done!"
