#!/bin/bash

# Create a new session called "💻🔥"
tmux new-session -d -s 💻🔥

# Crate the first window and run vim
tmux new-window -t 💻🔥:1 -n "NOTES"
#Open vim with the last note
tmux send-keys "v ~/Notes/$(ls /home/pablo/Notes | sort | tail -n 1)/$(ls ~/Notes/$(ls /home/pablo/Notes | sort | tail -n 1) | sort | tail -n 1)" C-m
# Crate the second one 
tmux new-window -t 💻🔥:2 -n "BACKEND"

# Chage to work directory passed through parameter
tmux send-keys "cd $1" C-m
# Ejecutar htop en el panel de abajo
tmux send-keys "files" C-m

# Split second window
tmux split-window -v -t 💻🔥:2

# Chage to work directory passed through parameter
tmux send-keys "cd $1" C-m
# Clean window
tmux send-keys "clear" C-m

# Chage focus to the fisrt window
tmux select-window -t 💻🔥:1

# Attach to the new session
tmux attach -t 💻🔥

