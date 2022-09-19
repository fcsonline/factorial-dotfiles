#!/bin/bash

# Install tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
TMUX_PLUGIN_MANAGER_PATH="${HOME}/.tmux/plugins/" ~/.tmux/plugins/tpm/bin/install_plugins
