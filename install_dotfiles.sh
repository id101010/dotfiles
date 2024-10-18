#!/usr/bin/env bash

BASE=/home/$USER

# alacritty
ln -sf alacritty/alacritt.toml $BASE/.config/alacritty/alacritty.toml
# dunst
ln -sf dunst/dunstrc $BASE/.config/dunst/dunstrc
# git
ln -sf git/gitconfig $BASE/.gitconfig
# i3
ln -sf i3/config $BASE/.config/i3/config
# i3status-rust
ln -sf i3-status-rust/config.toml $BASE/.config/i3status-rust/config.toml
# kitty
ln -sf kitty/kitty.conf $BASE/.config/kitty/kitty.conf
ln -sf kitty/nord.conf $BASE/.config/kitty/nord.conf
# picom
ln -sf picom/picom.conf $BASE/.config/picom.conf
# shell
ln -sf shell/zshrc $BASE/.zshrc
# tmux
ln -sf tmux/tmux.conf $BASE/.tmux.conf
# vim
ln -sf vim/vimrc $BASE/.vimrc
# wallpapers
ln -sf wallpapers/gentoo.jpg $BASE/.config/wallpaper.jpg
# xorg
ln -sf xorg/xinitrc $BASE/.xinitrc
