#! /usr/bin/env bash

cd `dirname $0`
dotfiles_src_dir=`pwd`

DOT_FILES="bash_profile bashrc gitconfig tmux.conf"
for f in $DOT_FILES; do
    ln -sf $dotfiles_src_dir/$f ~/.$f
done

# Update direct-depended submodule.
git submodule update --init

# Update indirect-depended submodule, if any.
git submodule foreach git submodule update --init

# Update each checkouted submodules.
git submodule foreach git pull origin master

ln -sf $dotfiles_src_dir/dircolors-solarized/dircolors.ansi-dark ~/.dir_colors

