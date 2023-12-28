#!/bin/bash

read -p "Are you sure you want to continue? (y/n): " response

if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "Confirmed. Proceeding..."
    # Add your code here for the actions after confirmation
else
    echo "Operation canceled."
fi

sudo pacman -Syu
sudo pacman -S  --noconfirm i3-gaps dmenu firefox nodejs-lts neofetch neovim lolcat htop python3 git zsh

echo "exec i3" > ~/.xinitrc

# cloning configuration files repo
git clone https://github.com/drimerdev/Dotfiles.git

# aplaying themes

# i3wm config
cp /home/Dotfiles/i3/config  /home/.config/i3/config

# neovim config
cp /home/Dotfiles/neovim/init.lua  /home/.config/nvim/init.lua

# ohmyzsh installer
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh config

cp /home/Dotfiles/zsh/.zshrc  /home/.zshrc

# terminals, tools and extras
sudo pacman -S --noconfirm gnome-terminal npm cmatrix python-pip

echo Instalation complete!
