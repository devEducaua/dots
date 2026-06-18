
export XKB_DEFAULT_LAYOUT=br
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export LS_COLORS='di=2;38'
export EDITOR="$HOME/sou/nvim-linux-x86_64/bin/nvim"
export MANPAGER="nvim +Man!"
export PATH="$HOME/.config/scripts:$HOME/.local/bin:$HOME/.config/go/bin:$PATH:$HOME/sou/odin-linux-amd64-nightly+2026-06-08"

export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/:/usr/lib/pkgconfig/:/usr/share/pkgconfig"
export _ZO_FZF_OPTS="--smart-case --height 30% --reverse --border=none"

PROMPT="%~ 󰘧 "

HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_CACHE_HOME/zsh_history"

source <(fzf --zsh)
eval "$(zoxide init zsh)"

alias nvim="$EDITOR"

alias ls="ls --color=auto --indicator-style=none"
alias b="btop"
alias no="z ~/not && nvim ."
alias tnp="tn \$(pwd)"
alias tor="$HOME/sou/tor-browser/Browser/start-tor-browser --detach"

alias sxhkdrc="nvim $HOME/.config/sxhkd/sxhkdrc"
alias bspwmrc="nvim $HOME/.config/bspwm/bspwmrc"
alias tmuxc="nvim $HOME/.config/tmux/tmux.conf"
alias nvc="z $HOME/.config/nvim && $EDITOR ."

