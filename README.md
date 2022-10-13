# dotfiles

Less is more. This repo contains all my dotfiles for frequently used software.

# how to manage

Personally I use [rcm](https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos) to keep my dotfiles in sync but this repo does not depend on anything.

My ansible-setup will install this repo to ~/.dotfiles and rcm will take care
of all symlinks. Here are some simple commands to manage your symlinks:

```bash
$ mkrc .$DOTFILE # Add new dotfile and create symlink
$ lsrc           # List all linked dotfiles
$ rcup -v        # Update all dotfile symlinks
```
