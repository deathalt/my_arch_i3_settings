#!/bin/bash

mkdir ~/arch_config
cd ~/arch_config
sudo pacman -Suy
sudo pacman -S firefox zsh neovim xclip tmux git wget --noconfirm
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd ~/arch_config
sudo pacman -S git nitrogen rofi python-pip ttf-font-awesome adobe-source-code-pro-fonts binutils gcc make pkg-config fakeroot python-yaml ttf-nerd-fonts-symbols-common git --noconfirm
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/deathalt/my_arch_i3_settings dotfiles
cd dotfiles
mkdir ~/.config/alacritty/ && cp alacritty.yml ~/.config/alacritty/

cp i3_config ~/.config/i3/conf
cp polybar_config ~/.config/polybar/config
cp i3wmthemer_bar_launch.sh ~/.config/polybar/i3wmthemer_bar_launch.sh
cp 002.png bg-saved.cfg ~/.config/nitrogen/
sudo cp i3-keyboard-layout /usr/bin/


sudo pacman -S telegram-desktop bashtop thunar mate-power-manager --noconfirm
yay -S i3exit nerd-fonts-complete ttf-adobe-source-code-pro-fonts
