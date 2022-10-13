# dotfiles

This repository is part of the ansible-archlinux setup. It contains all my personal linux dotfiles.
All content is managed by [rcm](https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos).

The ansible setup will install this repo to ~/.dotfiles and rcm will take care
of all symlinks. Here are some simple commands to manage your symlinks:

```bash
$ mkrc .$DOTFILE # Add new dotfile and create symlink
$ lsrc           # List all linked dotfiles
$ rcup -v        # Update all dotfile symlinks
```
