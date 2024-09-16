#!/bin/bash

cd $HOME/code/notes

selected=$(fzf --preview "bat --color=always {}" --print-query)
query=$(echo $selected | cut -f 1 -d " ")
file=$(echo $selected | cut -f 2 -d " ")

if [[ ! -z file ]]; then
	echo $file
	echo "dupa"
	nvim $file
elif [[ ! -z query ]]; then
	echo "cdssc"
	nvim $query
fi
