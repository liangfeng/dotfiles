# .bash_profile

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    # Get the aliases and functions
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# User specific environment and startup programs
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    export PATH="$HOME/bin:$PATH"
fi
