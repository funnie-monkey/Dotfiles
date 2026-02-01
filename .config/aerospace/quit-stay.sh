#!/bin/zsh
set -e

ws="$(aerospace list-workspaces --focused)"  # always prints a single workspace :contentReference[oaicite:2]{index=2}

# Quit whatever is currently frontmost (no System Events)
osascript <<'APPLESCRIPT'
set frontApp to (path to frontmost application)
tell application frontApp to quit
APPLESCRIPT

# Let macOS pick a new focus, then snap back
sleep 0.10
aerospace workspace "$ws"

