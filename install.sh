#!/bin/bash

symlink_files=("nvim" "oh-my-posh" "tmux" ".bashrc")

main(){
	local file=""
	local source_file=""
	local target_file=""

	for file in "${symlink_files[@]}"
	do
		source_file="${pwd}/$file"
		target_file="$HOME/$file"
		ln -fs $source_file $target_file
	done
}

main
