#! /usr/bin/env bash

cd ~/.dotfiles

DOT_FILES="bash_profile bashrc gitconfig tmux.conf"
for f in $DOT_FILES; do
    ln -sf ~/.dotfiles/$f ~/.$f
done

git submodule init
git submodule update

ln -sf ~/.dotfiles/dircolors-solarized/dircolors.ansi-dark ~/.dir_colors
