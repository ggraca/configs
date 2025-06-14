export XDG_CURRENT_DESKTOP=sway

# shh-agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# export PATH="/usr/local/sbin:$PATH"

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

# Bun
if command -v bun &> /dev/null; then
  # bun completions
  [ -s "/home/ggraca/.bun/_bun" ] && source "/home/ggraca/.bun/_bun"

  # bun
  export BUN_INSTALL="$HOME/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
fi
