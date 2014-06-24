#! /usr/bin/env bash

DOT_FILES="bash_profile bashrc gitconfig tmux.conf"
for f in $DOT_FILES; do
    ln -sf ~/download/dotfiles/$f ~/.$f
done

cd ~/download/

if [ -d dircolors-solarized ];
then
    cd dircolors-solarized
    git pull
    cd ..
else
    git clone https://github.com/seebi/dircolors-solarized.git
fi

ln -sf ~/download/dircolors-solarized/dircolors.ansi-dark ~/.dir_colors

if [ -d tmux-colors-solarized ];
then
    cd tmux-colors-solarized
    git pull
    cd ..
else
    git clone https://github.com/seebi/tmux-colors-solarized.git
fi

