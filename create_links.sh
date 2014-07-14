#! /usr/bin/env bash

cd ~/.dotfiles

DOT_FILES="bash_profile bashrc gitconfig tmux.conf"
for f in $DOT_FILES; do
    ln -sf ~/.dotfiles/$f ~/.$f
done

git submodule update --init

cd dircolors-solarized
git pull origin master
cd ..

ln -sf ~/.dotfiles/dircolors-solarized/dircolors.ansi-dark ~/.dir_colors

cd tmux-colors-solarized
git pull origin master
cd ..

