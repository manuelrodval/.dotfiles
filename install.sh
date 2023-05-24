#!/bin/bash

symlink_files=("nvim" "oh-my-posh" "tmux" ".bashrc" "starship.toml")

main(){
	local file=""
	local source_file=""
	local target_file=""

	for file in "${symlink_files[@]}"
	do
		source_file="$PWD/$file"
		target_file="$HOME/.config/"
		ln -fs "$source_file" "$target_file"
	done

	local source_bash="source $HOME/.config/.bashrc"
	local bashrc_file="$HOME/.bashrc"
	grep -qxF "$source_bash" "$bashrc_file" || (echo -e "\n# Source config files" >> "$bashrc_file" && echo "$source_bash" >> "$bashrc_file")
}

main
