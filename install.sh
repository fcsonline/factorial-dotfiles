#!/bin/bash

# Execute this script manually
if [ -z "${INIT}" ]; then
  echo "Initializing dotfiles..."
else
  echo "This script is not designed to run from $SHELL and with INIT env variable"
  exit 1
fi

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
