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
ln -fs $HOME/.files/startify.vim $HOME/.vim/config/startify.vim
ln -fs $HOME/.files/lightline.vim $HOME/.vim/config/lightline.vim
ln -fs $HOME/.files/init.vim $HOME/.config/nvim/init.vim
ln -fs $HOME/.files/powerline_fz.vim $HOME/.vim/plugged/lightline.vim/autoload/lightline/colorscheme/powerline_fz.vim
ln -fs $HOME/.files/dwm/config.def.h $HOME/dwm-6.2/config.def.h

echo "Done!"
