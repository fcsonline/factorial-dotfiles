#!/bin/bash

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias cd..='cd ..'
alias cd...='cd ../..'

# LS
alias ls='ls --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alFh'

# Tree
if [ ! -x "$(which tree)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# GIT
alias gap='git add -p'
alias gd='git diff'
alias gdc='git diff --cached'
alias gg='git grep -n -C2 --color=always'
alias gg0='git grep -n -C0 --color=always'
alias gitroot='cd $(git rev-parse --show-cdup)'
alias gl='git log'
alias grm='git rebase master'
alias gm='git commit -m'
alias gma='git commit --amend --no-edit'
alias gpu='git publish'
alias gpr='git pull --rebase'
alias gs='git status -s'

# UTILS
alias remove_colors='sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g"'
alias vim='nvim'

# Devenv
alias devenv='tmuxinator start -p gitpod/.tmuxinator.yml'
