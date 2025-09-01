#!/usr/bin/env bash

# Top Right
tmux splitw -dh "npm run res:dev"

# Top Left
tmux splitw -dbv "npm run dev"

# tmux selectp -R
# Bottom Right
# tmux splitw -dv "$SHELL"
# tmux selectp -l
