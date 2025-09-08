#!/bin/sh
yad --title="EndeavourOS Sway-WM keybindings:" \
	--center --width=400 --height=575 \
	--no-buttons --list --expand-column=0 \
	--column=shortcut: --column=description: \
	"" "  Start Menu" \
	"+t" "  Open terminal" \
	"+e" "  Open text editor" \
	"+q" "Close window" \
	"" "" \
	"+Numbers" "Select workspaces" \
	"+Shift+Numbers" "Select workspaces" \
	"+Arrows" "Select windows" \
	"+Shift+Arrows" "Move windows" \
	"" "" \
	"+l" "Lock the screen" \
	"+Shift+l" "Show the power menu" \
	"+s" "Take screenshot" \
	"+Shift+s" "Show the screenshot menu" \
	"" "" \
	"+f" "Toggle fullscreen" \
	"+x" "Toggle floating window" \
	"+c" "Move workspace to another output" \
	"+v" "Split layout vertically" \
	"+b" "Split layout horizontally" \
	"+h" "Show this cheatsheet" \
