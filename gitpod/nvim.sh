#!/bin/bash

# Install packer dependencies
timeout 60 nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerClean' -c 'PackerSync' -c 'TSUpdateSync'
