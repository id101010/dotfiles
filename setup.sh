#!/bin/bash

DOTFILES="/home/$USER/.dotfiles"

# Clone the repository and setup powerline fonts
git clone https://github.com/id101010/LinuxDotFiles.git $DOTFILES

# Uncomment to install powerlinefonts from the arch linux user repository
#yaourt -S powerline-fonts-git

# setup i3
if [ ! -e "$HOME/.i3" ]; then
    cp -r $DOTFILES/i3wm/Authenticator      $HOME/.i3/
    cp -r $DOTFILES/i3wm/i3blur.py          $HOME/.i3/
    cp -r $DOTFILES/i3wm/i3dmenu-wrapper.sh $HOME/.i3/
    cp -r $DOTFILES/i3wm/i3status.conf      $HOME/.i3/
    cp -r $DOTFILES/i3wm/volnotid.sh        $HOME/.i3/
    
    ln -s $DOTFILES/i3wm/config $HOME/.i3/config
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

# setup urxvt
ln -s $DOTFILES/urxvt/Xdefaults $HOME/.Xdefaults
