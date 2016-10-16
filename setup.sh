#!/bin/bash

#############################################################
#   _____      _                               _       _    #
#  / ____|    | |                             (_)     | |   #
# | (___   ___| |_ _   _ _ __    ___  ___ _ __ _ _ __ | |_  #
#  \___ \ / _ \ __| | | | '_ \  / __|/ __| '__| | '_ \| __| #
#  ____) |  __/ |_| |_| | |_) | \__ \ (__| |  | | |_) | |_  #
# |_____/ \___|\__|\__,_| .__/  |___/\___|_|  |_| .__/ \__| #
#                       | |                     | |         #
#                       |_|                     |_|         #
#############################################################

# Files and folders
DOTFILES="$HOME/.dotfiles"

BAKFILES=".zshrc
          .tmux.conf
          .vimrc
          .Xdefaults"

BAKFOLD="$HOME/.dotfilebackup"

# Clean environment
if [ "$1" == "clean" ]; then
    echo "[*] Backing up dotfiles to $BAKFOLD"

    # Create backup folder if it doesn't exist
    if [ ! -d $BAKFOLD ]; then
        mkdir $BAKFOLD
    fi

    # Backup each config file specified by $BAKFILES
    for file in $BAKFILES
    do
        cp -v $HOME/$file $BAKFOLD/$file
        rm -rf $HOME/$file
    done

    exit
fi

# Clone the repository if it doesn't exist 
if [ ! -e "$HOME/.dotfiles/"  ]; then
    git clone https://github.com/id101010/LinuxDotFiles.git $DOTFILES
fi

# Uncomment to install powerlinefonts from the arch linux user repository
#yaourt -S powerline-fonts-git

# ------------------------------------------------ Setup I3wm
ln -sfv $DOTFILES/i3wm/ $HOME/.i3

# ------------------------------------------------ Setup tmux
ln -sfv $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf

# ------------------------------------------------ Setup vim
ln -sfv $DOTFILES/vim/vimrc $HOME/.vimrc

# ------------------------------------------------ Setup zsh
ln -sfv $DOTFILES/zsh/zshrc $HOME/.zshrc

# ------------------------------------------------ Setup urxvt
ln -sfv $DOTFILES/urxvt/Xdefaults $HOME/.Xdefaults
