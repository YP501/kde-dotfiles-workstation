# ~/.config/plasma-workspace/env/ssh-agent-env.sh
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR:-/run/user/$UID}/ssh-agent.sock"
if ! [ -S "$SSH_AUTH_SOCK" ] || ! SSH_AUTH_SOCK="$SSH_AUTH_SOCK" ssh-add -l >/dev/null 2>&1; then
  eval "$(ssh-agent -s -a "$SSH_AUTH_SOCK")" >/dev/null
fi

export SSH_ASKPASS=/usr/bin/ksshaskpass
