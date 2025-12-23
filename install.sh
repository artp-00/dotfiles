#!/bin/sh

read -p "This program will override your current configuration of the follwing programs:
    - dunst
    - bashrc
    - zshrc
    - ~/.scripts
    - .vscode
    - picom
    - kitty
    - rofi
    - i3
are you sure you want to override it ? (Ctrl-C if no)" -n1 -s
# rm -r "$HOME/.config/nvim"

echo ""

# ln -s "$(pwd)/nvim" ~/.config/

echo "done"


