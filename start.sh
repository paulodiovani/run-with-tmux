#!/usr/bin/env bash

# Usage:
# ./start.sh sample.commands
#
# sample.commands should have one command per line
# they will run on tmux panels

IFS=$'\n' read  -d '' -r -a COMMANDS < "$1"
D=$(dirname "$0")
EXIT_MSG='Process terminated! Press any key to exit.'

# run all commands in tmux panes
for C in "${COMMANDS[@]}"; do 
  tmux split "cd $D; eval \"$C\"; echo $EXIT_MSG; ( trap '' INT; exec read; )"
done

# rearrange panes
tmux select-layout even-vertical
