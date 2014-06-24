#! /usr/bin/env bash

DOT_FILES="bash_profile bashrc gitconfig tmux.conf"
for f in $DOT_FILES; do
    ln -sf ~/.dotfiles/$f ~/.$f
done
