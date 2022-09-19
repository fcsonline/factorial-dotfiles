#!/bin/bash

~/bin/chezmoi init

pushd ~/.local/share/chezmoi
  git remote add origin $SUPERVISOR_DOTFILE_REPO
  git branch -M main
  git pull origin main
popd

~/bin/chezmoi apply

# Install the rest of scripts asyncronously
./gitpod/tmux.sh & disown
./gitpod/nvim.sh & disown
