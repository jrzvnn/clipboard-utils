#!/bin/bash

count=1
prefix="manila_cathedral_"
folder="/home/jrzvnn/Documents/Projects/tour-in-tramuros/data/train/manila_cathedral/"

cd "$folder" || exit

for file in *; do
    if [ "$count" -le 25 ]; then
        extension="${file##*.}"
        new_name="${prefix}${count}.png"
        mv "$file" "$new_name"
        ((count++))
    else
        break
    fi
done

