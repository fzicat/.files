#!/usr/bin/env bash

echo ".files"

cd $HOME

echo "Linking dotfile..."
ln -fs .files/.vimrc
ln -fs .files/.vim
ln -fs .files/.tmux.conf

echo "Aliases..."
if grep -Fxq 'source ~/.files/.aliases' $HOME/.bashrc
  then
    echo "OK"
  else
    echo "Adding .aliases to .bashrc"
    echo "source ~/.files/.aliases" >> $HOME/.bashrc
fi

echo "vim bundles..."
sh $HOME/.files/vimbundles.sh

echo "Done!"
