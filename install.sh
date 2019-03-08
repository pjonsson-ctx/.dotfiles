#!/bin/bash

# Brew install
if [ ! -x "$(command -v "brew")" ]
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [ ! -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]
then
    brew install bash-git-prompt
    git_prompt_make_custom_theme
    # make changes here ~/.git-prompt-colors.sh
fi

# Symlink .dotfiles to $HOME
ln -s $HOME/.dotfiles/.bash_profile $HOME
ln -s $HOME/.dotfiles/.Rprofile $HOME
ln -s $HOME/.dotfiles/.gitconfig $HOME
ln -s $HOME/.dotfiles/.vimrc $HOME
ln -s $HOME/.dotfiles/.inputrc $HOME

# Create a Desktop folder where screenshots go
mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots
killall SystemUIServer
