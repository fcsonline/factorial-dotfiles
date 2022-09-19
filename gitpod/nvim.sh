#!/bin/bash

# Install packer dependencies
timeout 60 nvim --headless -c 'PackerClean' -c 'PackerSync' -c 'TSUpdateSync'
