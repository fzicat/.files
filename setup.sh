#!/usr/bin/env bash

# ajouter .bashrc_custom a la fin de .bashrc:
# echo ". ~/.bashrc_custom" >> ~/.bashrc
#
# installer junegunn/vim-plug

echo ".files"

cd $HOME

echo "Linking dotfile..."
ln -fs .files/.vimrc
ln -fs .files/.bashrc_custom

echo "Done!"
