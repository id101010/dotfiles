#!/bin/bash

DOTFILES="/home/$USER/.dotfiles"

# Clone the repository and setup powerline fonts
git clone https://github.com/id101010/LinuxDotFiles.git $DOTFILES

# Uncomment to install powerlinefonts from the arch linux user repository
#yaourt -S powerline-fonts-git

# setup i3
if [ ! -e "$HOME/.i3" ]; then
    ln -s $DOTFILES/i3wm/ $HOME/.i3
fi

# setup tmux
if [ ! -e "$HOME/.tmux.conf" ]; then
    ln -s $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf
fi

# setup vim
if [ ! -e "$HOME/.vimrc" ]; then
    ln -s $DOTFILES/vim/vimrc $HOME/.vimrc
fi

# setup zsh
if [ ! -e "$HOME/.zshrc" ]; then
    ln -s $DOTFILES/zsh/zshrc $HOME/.zshrc
fi
