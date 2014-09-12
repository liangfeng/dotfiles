#! /usr/bin/env bash

cd `dirname $0`
dotfiles_src_dir=`pwd`

DOT_FILES="bash_profile bashrc gitconfig tmux.conf"
for f in $DOT_FILES; do
    ln -sf $dotfiles_src_dir/$f ~/.$f
done

git submodule foreach git pull origin master
git submodule update --init

ln -sf $dotfiles_src_dir/dircolors-solarized/dircolors.ansi-dark ~/.dir_colors

