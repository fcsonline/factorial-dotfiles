#!/bin/bash

# Execute this script manually
[ -z "$PS1" ] && exit

~/bin/chezmoi init

pushd ~/.local/share/chezmoi
  git remote add origin $SUPERVISOR_DOTFILE_REPO
  git branch -M main
  git pull origin main
popd

~/bin/chezmoi apply

# Install the rest of scripts asyncronously
$(dirname $0)/gitpod/tmux.sh & disown
$(dirname $0)/gitpod/nvim.sh & disown
