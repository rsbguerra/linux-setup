#!/bin/bash

images=($HOME/Pictures/Wallpapers/*)

#for ((i=0; i<${#images[@]}; i++)); do
#    echo "${images[$i]}"
#done
#echo "----------"
i=$((RANDOM % ${#images[@]}))
# echo "random: $i"
# echo "${images[$i]}"

feh --bg-fill ${images[i]} 
