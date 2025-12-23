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
Are you sure you want to override them ? (Ctrl-C if no)" -n1 -s

echo ""

# TODO: wrap rm in function in order to not print an error and remove symlinks gracefully

rm ~/.zshrc;  ln -s "$(pwd)/.zshrc" ~/.zshrc
rm ~/.bashrc;  ln -s "$(pwd)/.bashrc" ~/.bashrc
sudo rm /etc/inputrc; sudo ln -s "$(pwd)/inputrc" /etc/inputrc
rm -rf ~/.config/i3/; ln -s "$(pwd)/i3" ~/.config/
# TODO: vscode dotfiles
rm -rf ~/.config/picom/; ln -s "$(pwd)/picom" ~/.config/
rm -rf ~/.config/kitty/; ln -s "$(pwd)/kitty" ~/.config/
rm -rf ~/.config/rofi/; ln -s "$(pwd)/rofi" ~/.config/
rm -rf ~/.config/dunst/; ln -s "$(pwd)/dunst" ~/.config/
# TODO: scripts


echo "done"


