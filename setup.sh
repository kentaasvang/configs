#!/bin/bash
files=(".vimrc" ".gitconfig" ".bashrc" ".tmux.conf")

for file in ${files[@]} 
do
	if [ -f ~/$file ]
	then
		rm ~/$file
		echo "Deleted $file from home-folder"
	fi
	cp source/$file ~/
	echo "Copied $file to home-folder"
done;
