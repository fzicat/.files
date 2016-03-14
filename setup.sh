#!/usr/bin/env bash

echo ".files"

cd $HOME

echo "Linking dotfile..."
ln -fs .files/.vimrc
ln -fs .files/.vim
ln -fs .files/.tmux.conf

echo "vim bundles..."
sh $HOME/.files/vimbundles.sh

echo "Done!"
