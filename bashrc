# .bashrc

# User specific aliases and functions

set -o vi
ulimit -Sc unlimited

export PS1='[\u]@[\w]\$'
export TERM='screen-256color'
export LC_ALL=en_US.utf-8
export HISTTIMEFORMAT="%F %T "
export FIGNORE='.o:.bak:.tmp'
export EDITOR=vim

complete -c sudo
complete -c man
complete -c git
complete -c svn

alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias ls='ls -F --color=auto'
alias l.='ls -ld .* --color=auto'
alias la='ls -ld .* --color=auto'
alias ll='ls -l --color=auto'
alias lh='ls -ldh --color=auto'
alias vi='vim'
alias vr='vim -R'
alias gdb='gdb -q'
alias tmux='tmux -2'
