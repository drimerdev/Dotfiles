#!/bin/bash

sudo dnf install neovim neofetch python-pip firefox alacritty starship gnome-tweaks
pip install pls-cli
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim

