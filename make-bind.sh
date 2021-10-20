#!/bin/bash
ROOT_DIR="/home/rem/Documents/dots/dotfiles"

sudo mount --bind $HOME/.config/i3/ "$ROOT_DIR/i3/" 
sudo mount --bind $HOME/.config/i3status "$ROOT_DIR/i3status"
sudo mount --bind $HOME/.emacs.d/ "$ROOT_DIR/emacs"
sudo mount --bind $HOME/.config/nvim "$ROOT_DIR/nvim"
