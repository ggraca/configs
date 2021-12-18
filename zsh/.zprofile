if [ -z "$DISPLAY" -a "$(fgconsole)" -eq 1 ]; then
  XDG_CURRENT_DESKTOP=sway MOZ_ENABLE_WAYLAND=1 exec startw
fi

