export XDG_CURRENT_DESKTOP=sway

# User Configs
# Nix
if command -v nix &> /dev/null; then
  export PATH="$HOME/.nix-profile/bin:$PATH"
fi

# Ruby
if command -v rbenv &> /dev/null; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# Node
if command -v nodenv &> /dev/null; then
  export PATH="$HOME/.nodenv/bin:$PATH"
  eval "$(nodenv init -)"
fi
