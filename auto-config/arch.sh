#!/bin/bash

echo starting instalation . . .
sudo pacman -Sy
sudo pacman -S zsh neofetch micro elinks tmux python-pip emacs git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshr
exec zsh
chsh -s zsh
git clone --depth 1 https://github.com/m3tozz/NeoCat.git && cd NeoCat && bash ./neocat.sh --install
sudo pacman -S i3-gaps waybar
echo instalation complete!
