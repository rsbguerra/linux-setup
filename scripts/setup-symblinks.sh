#!/bin/bash
# Define a string variable with a value
configFiles=(dunstrc i3 i3status polybar .zshrc)
homeFiles=(.zshrc .screenlayout clear_lsla.sh)

# Iterate the string variable using for loop
for i in $configFiles; do
    mv $HOME/.config/$i $HOME/Documents/linux-setup/.config
    ln -s $HOME/Documents/linux-setup/.config/$i $HOME/.config/$i
done

homeFiles=(.screenlayout .clear_lsla.sh)
for i in $homeFiles; do
    mv $HOME/$i $HOME/Documents/linux-setup
    ln -s $HOME/Documents/linux-setup/$i $HOME/$i
done

mv $HOME/.zshrc $HOME/Documents/linux-setup
ln -s $HOME/Documents/linux-setup/.zshrc $HOME/.zshrc