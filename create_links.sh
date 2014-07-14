#! /usr/bin/env bash

cd ~/.dotfiles

DOT_FILES="bash_profile bashrc gitconfig tmux.conf"
for f in $DOT_FILES; do
    ln -sf ~/.dotfiles/$f ~/.$f
done

git submodule update --init

SUBMODULES="dircolors-solarized tmux-colors-solarized"
for module in $SUBMODULES; do
    cd $module
    git pull origin master
    cd ..
done

ln -sf ~/.dotfiles/dircolors-solarized/dircolors.ansi-dark ~/.dir_colors

