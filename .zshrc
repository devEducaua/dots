
export LS_COLORS='di=2;38'
export EDITOR='$HOME/dow/bloat/nvim-linux-x86_64/bin/nvim'
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/Scripts:$PATH"
export MANPAGER="$HOME/dow/bloat/nvim-linux-x86_64/bin/nvim +Man!"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

PROMPT="%F{white}%~%f 󰘧 "

HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_CACHE_HOME/zsh_history"
HISTCONTROL=ignoreboth

source <(fzf --zsh)
eval "$(zoxide init zsh)"
# eval "$(starship init zsh)"

alias ls="ls --color=auto --indicator-style=none"
alias la="ls -a"
alias ll="ls -lh"
alias lla="ls -lha"
alias lg="ls -a | rg"
alias rm="rm -r"

alias b="btop"
alias rng="ranger"
alias nw="newsraft"
alias nx="nsxiv"
alias bt="bluetui"

alias v="vb.sh"
alias nv="z ~/proj/ && v"
alias no="z ~/not & v"
alias tnp="tn $(pwd)"
alias scripts='z ~/.config/Scripts && v'
alias tws="bluetoothctl connect 41:42:41:59:31:26"
alias twsd="bluetoothctl disconnect"
alias wht="nsxiv -f ~/img/others/white.png"
alias p3="ping -3 google.com"
alias ta="tmux attach"
alias tls="tmux ls"

alias sxhkdrc 'nvim ~/.config/sxhkd/sxhkdrc'
alias bspwmrc 'nvim ~/.config/bspwm/bspwmrc'
alias zshc 'nvim ~/.zshrc'
alias fishc 'nvim ~/.config/fish/config.fish'
alias starc 'nvim ~/.config/starship.toml'
alias stc 'z ~/dow/bloat/st && nvim .'
alias tmuxc='nvim ~/.config/tmux/tmux.conf'
alias nvc='z ~/.config/nvim && nvim .'
alias dunstrc='nvim ~/.config/dunst/dunstrc'
alias rngc='nvim ~/.config/ranger/rc.conf'
alias mpdc='z ~/.config/mpd/'
alias rmpcc='v ~/.config/rmpc/'
alias nwc='nvim ~/.config/newsraft/'
alias qutec='z ~/.config/qutebrowser && nvim .'
alias zshrc="v .zshrc"

alias pac-s="sudo pacman -S"
alias pac-ss="pacman -Ss"
alias pac-r="sudo pacman -Rs"
alias pac-rn="sudo pacman -Rns"
alias pac-q="pacman -Q"
alias pac-qg="pacman -Q | rg"
alias pac-i="pacman -Si"
alias pyu="sudo pacman -Syu"
