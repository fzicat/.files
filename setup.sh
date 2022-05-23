#!/usr/bin/env bash

# installer packer
# git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
# 
# firewall rule to add on Windows 10:
# New-NetFirewallRule -DisplayName "WSL" -Direction Inbound  -InterfaceAlias "vEthernet (WSL)"  -Action Allow

echo ".files"

cd $HOME

#echo "Linking dotfile..."
ln -fs $HOME/.files/shell $HOME/.config/
ln -fs $HOME/.files/zsh $HOME/.config/
ln -fs $HOME/.files/lf $HOME/.config/
ln -fs $HOME/.files/nvim $HOME/.config/
ln -fs $HOME/.files/tmux/tmux.conf $HOME/.tmux.conf

ln -fs $HOME/.config/shell/profile $HOME/.zprofile

echo "Done!"
