#!/bin/sh

read -p "This program will override your current configuration of the follwing programs:
    - bashrc
    - zshrc
    - inputrc (requires sudo)
    - i3
    - .vscode
    - picom
    - kitty
    - rofi
    - dunst
    - ~/.scripts
Are you sure you want to override it ? (Ctrl-C if no)" -n1 -s

echo ""

rm ~/.zshrc;  ln -s "$(pwd)/.zshrc" ~/.zshrc
rm ~/.bashrc;  ln -s "$(pwd)/.bashrc" ~/.bashrc
sudo rm /etc/inputrc; sudo ln -s "$(pwd)/inputrc" /etc/inputrc
rm ~/.config/i3/; ln -s "$(pwd)/i3" ~/.config/
# TODO: vscode dotfiles
rm -r ~/.config/picom/; ln -s "$(pwd)/picom" ~/.config/
rm -r ~/.config/kitty/; ln -s "$(pwd)/kitty" ~/.config/
rm -r ~/.config/rofi/; ln -s "$(pwd)/rofi" ~/.config/
rm -r ~/.config/dunst/; ln -s "$(pwd)/dunst" ~/.config/
# TODO: scripts


echo "done"


