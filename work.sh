#!/bin/bash

cd "/home/pablo/Documents/tmux_pata_sessions/"

if [ "$1" ]; then
	case "$1" in
		"e" | "edit")
			if [ -z "$EDITOR" ]; then
				echo "The EDITOR environment variable is not set. Set it to specify your preferred editor."
			else
				$EDITOR "workspaces"
			fi
			exit 0
			;;
		"l" | "list")
			bat "workspaces"
			exit 0
			;;
	esac
fi


# Select workspace from the text file
WDIR=$(cat "workspaces" | fzf --no-preview)

if [ -z "$WDIR" ]; then
	exit 0
fi

./launch.sh "$WDIR"

