#!/bin/bash

cd "/home/pablo/Documents/tmux_pata_sessions/"

# Select workspace from the text file
WDIR=$(cat "workspaces" | fzf --no-preview)

./launch.sh "$WDIR"

