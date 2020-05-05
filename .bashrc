#!/bin/bash


stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.

export PS1="[\u@\h\w ]$ "

# Load shortcut aliases
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" 

# Load aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

