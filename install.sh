#!/bin/bash

~/bin/chezmoi init

pushd ~/.local/share/chezmoi
  git remote add origin $SUPERVISOR_DOTFILE_REPO
  git branch -M main
  git pull origin main
popd

~/bin/chezmoi apply

# Install tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
TMUX_PLUGIN_MANAGER_PATH="${HOME}/.tmux/plugins/" ~/.tmux/plugins/tpm/bin/install_plugins

if ! [ -x "$(command -v starship)" ]; then
  curl -sS https://starship.rs/install.sh | sh -s -- --yes --bin-dir ${HOME}/.local/bin >/dev/null 2>&1
fi

# Install packer dependencies
# nvim --headless -c 'autocmd User PackerComplete quitall' -c 'silent PackerSync'
# nvim --headless -c 'autocmd User PackerComplete quitall' -c 'silent PackerSync' # Yep, twice
# nvim --headless -c 'TSUpdateSync'
