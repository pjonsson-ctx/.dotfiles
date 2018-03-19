#!/bin/bash

ln -s $HOME/.dotfiles/.bash_profile $HOME
ln -s $HOME/.dotfiles/.Rprofile $HOME
ln -s $HOME/.dotfiles/.gitconfig $HOME
ln -s $HOME/.dotfiles/.vimrc $HOME
ln -s $HOME/.dotfiles/.inputrc $HOME

mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots
killall SystemUIServer

