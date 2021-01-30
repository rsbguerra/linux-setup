#!/bin/bash
configFiles=(dunstrc i3 i3status polybar .zshrc)
homeFiles=(.zshrc .screenlayout clear_lsla.sh)

for i in $configFiles; do
   # rm -r $HOME/.config/$i
    #mv $HOME/.config/$i $HOME/Documents/linux-setup/.config
    if [test -f $i] || [ -d "$DIR" ]; then
        rm -r $i
    fi
    ln -s $HOME/Documents/linux-setup/.config/$i $HOME/.config/$i
done

homeFiles=(.screenlayout .clear_lsla.sh)
for i in $homeFiles; do
   # mv $HOME/$i $HOME/Documents/linux-setup
    if [test -f $i] || [ -d "$DIR" ]; then
        rm -r $i
    fi
   ln -s $HOME/Documents/linux-setup/$i $HOME/$i
done

#mv $HOME/.zshrc $HOME/Documents/linux-setup
if [test -f $i] || [ -d "$DIR" ]; then
        rm -r $i
fi
ln -s $HOME/Documents/linux-setup/.zshrc $HOME/.zshrc
