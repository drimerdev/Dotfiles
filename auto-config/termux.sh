#!/bin/bash

echo Starting instalation...
pkg install git
pkg install zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
exec zsh
pkg install elinks
pkg install emacs
pkg install python3
pkg install pip-python
pkg install tigervnc
pkg install fluxbox
pkg install pulseaudio
pkg install micro
pkg install neofetch
pkg install tmux
git clone https://github.com/adi1090x/termux-style
cd termux-style
bash ./install

