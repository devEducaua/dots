# cat ~/.d.md

function fish_prompt
    echo -ne (set_color white) (prompt_pwd)
    echo -n (set_color 777777) '󰘧 '
end

set fish_greeting ""
set -g fish_key_bindings fish_vi_key_bindings

export LS_COLORS='di=2;38'
export EDITOR='nvim'
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/Scripts:$PATH"
export MANPAGER="nvim +Man!"

set -l fg 777777
set -l orange d17e25
set -l red f52a65

set -g fish_color_normal $fg
set -g fish_color_command $orange
set -g fish_color_keyword $fg
set -g fish_color_param $fg
set -g fish_color_quote $orange
set -g fish_color_error $red

# alias v='nvim .'
alias v='source ~/.config/Scripts/v.sh'
alias nv='z ~/proj/ && nvim .'
alias no='z ~/notes && nvim .'
alias cs='source ~/.config/Scripts/cs.sh'
alias rat='cat ~/.rat.txt'
alias add='~/.config/Scripts/add'
alias ls='ls --color=auto --indicator-style=none'
alias tor='./dow/tor-browser/start-tor-browser.desktop'
# alias nf='neofetch --ascii ~/.config/neofetch/rei.txt'
alias css='z ~/.zen/67g8uwvc.efault\ \(alpha\)/chrome/'
alias sf='~/.config/Scripts/sf'
alias www='tmuxit -p ~/proj/www/ -s www'
alias mo='mpv $(xclip -o)'
# alias glow='glow -s ~/.config/glow/style.json'

abbr tls "tmux ls"
abbr ta "tmux a"
abbr tv "tmuxit -p ."
abbr tk "tmux kill-session -t"

abbr setx 'setxkbmap br && setxkbmap'
abbr xrel 'xrdb -merge ~/.Xresources'
abbr xcon 'v ~/.Xresources'
abbr nf 'neofetch'
abbr rp 'ranger ~/projects/'
abbr e 'eza'
abbr la 'ls -a'
abbr ll 'ls -lh'
abbr lla 'ls -lha'
abbr lg 'ls -a | grep'
abbr cl 'clear'
abbr rm 'rm -r'
abbr cd... 'cd ..; cd ..'
abbr mk 'mkdir'
abbr setbr 'setxkbmap br'
abbr vga '~/.config/Scripts/wall.sh'
abbr yt 'yt-dlp --write-auto-subs --sub-format srt --sub-langs en'

abbr hx 'helix'
abbr b 'btop'
abbr h 'htop'
abbr bt 'bluetui'
abbr pipes 'pipes.sh'
abbr mine '~/.config/Scripts/mine.sh'
abbr nnf 'neofetch --config=none'
abbr rng 'ranger'
abbr aquarium 'asciiquarium -t'
abbr wttr 'curl https://wttr.in'
abbr msk 'musikcube'
abbr nw 'newsraft'
abbr img 'nsxiv'

abbr i3c 'nvim ~/.config/i3/config'
abbr awmc 'nvim ~/.config/awesome/rc.lua'
abbr xmoc 'nvim ~/.config/xmonad/xmonad.hs'
abbr dwmc 'z ~/.config/dwm'
abbr niric 'nvim ~/.config/niri/config.kdl'
abbr swayc 'nvim ~/.config/sway/config'
abbr qtilec 'nvim ~/.config/qtile/config.py'
abbr hypr 'nvim ~/.config/hypr/hyprland.conf'
abbr riverc 'nvim ~/.config/river/init'
abbr sxhkdrc 'nvim ~/.config/sxhkd/sxhkdrc'
abbr bspwmrc 'nvim ~/.config/bspwm/bspwmrc'
abbr dkrc 'z ~/.config/dk'
abbr sxwmrc 'nvim ~/.config/sxwmrc'
abbr dwlc 'z ~/proj/dotfiles/dwl/'

abbr zshc 'nvim ~/.zshrc'
abbr bashc 'nvim ~/.bashrc'
abbr fishc 'nvim ~/.config/fish/config.fish'
abbr starc 'nvim ~/.config/starship.toml'

abbr toml 'nvim ~/.config/alacritty/alacritty.toml'
abbr stc 'z ~/.config/st && nvim .'
abbr ghosttyc 'nvim ~/.config/ghostty/config'
abbr kittyc 'nvim ~/.config/kitty/kitty.conf'

abbr tmuxc 'nvim ~/.config/tmux/tmux.conf'
abbr nvc 'z ~/.config/nvim && nvim .'
abbr picomc 'nvim ~/.config/picom/picom.conf'
abbr polyc 'z ~/.config/polybar'
abbr dunstrc 'nvim ~/.config/dunst/dunstrc'
abbr rngc 'nvim ~/.config/ranger/rc.conf'
abbr rofic 'z ~/.config/rofi/'
abbr neoc 'nvim ~/.config/neofetch/config.conf'
abbr mpdc 'z ~/.config/mpd/'
abbr rmpcc 'v ~/.config/rmpc/'
abbr scripts 'z ~/.config/Scripts && v'
abbr nomc 'nvim ~/.config/nom/config.yml'
abbr nwc 'nvim ~/.config/newsraft/'
abbr qutec 'z ~/.config/qutebrowser && nvim .'

abbr pac-s 'sudo pacman -S'
abbr pac-ss 'pacman -Ss'
abbr pac-r 'sudo pacman -Rs'
abbr pac-rn 'sudo pacman -Rns'
abbr pac-q 'pacman -Q'
abbr pac-qg 'pacman -Q | grep'
abbr pac-i 'pacman -Si'
abbr pyu 'sudo pacman -Syu'
abbr ys 'yay -S'
abbr yss 'yay -Ss'
abbr yr 'yay -Rs'
abbr yyu 'yay -Syu'
abbr fl 'flatpak install flathub'
abbr fs 'flatpak search'
abbr fls 'flatpak list --app'
abbr fls-l 'flatpak list'
abbr fu 'flatpak uninstall'
abbr fu-u 'flatpak uninstall --unused'
abbr fp 'flatpak update'
abbr fr 'flatpak run'

fzf --fish | source

function __zoxide_pwd
    builtin pwd -L
end

if ! builtin functions --query __zoxide_cd_internal
    string replace --regex -- '^function cd\s' 'function __zoxide_cd_internal ' <$__fish_data_dir/functions/cd.fish | source
end

function __zoxide_cd
    if set -q __zoxide_loop
        builtin echo "zoxide: infinite loop detected"
        builtin echo "Avoid aliasing `cd` to `z` directly, use `zoxide init --cmd=cd fish` instead"
        return 1
    end
    __zoxide_loop=1 __zoxide_cd_internal $argv
end

function __zoxide_hook --on-variable PWD
    test -z "$fish_private_mode"
    and command zoxide add -- (__zoxide_pwd)
end

function __zoxide_z
    set -l argc (builtin count $argv)
    if test $argc -eq 0
        __zoxide_cd $HOME
    else if test "$argv" = -
        __zoxide_cd -
    else if test $argc -eq 1 -a -d $argv[1]
        __zoxide_cd $argv[1]
    else if test $argc -eq 2 -a $argv[1] = --
        __zoxide_cd -- $argv[2]
    else
        set -l result (command zoxide query --exclude (__zoxide_pwd) -- $argv)
        and __zoxide_cd $result
    end
end

function __zoxide_z_complete
    set -l tokens (builtin commandline --current-process --tokenize)
    set -l curr_tokens (builtin commandline --cut-at-cursor --current-process --tokenize)

    if test (builtin count $tokens) -le 2 -a (builtin count $curr_tokens) -eq 1
        # If there are < 2 arguments, use `cd` completions.
        complete --do-complete "'' "(builtin commandline --cut-at-cursor --current-token) | string match --regex -- '.*/$'
    else if test (builtin count $tokens) -eq (builtin count $curr_tokens)
        # If the last argument is empty, use interactive selection.
        set -l query $tokens[2..-1]
        set -l result (command zoxide query --exclude (__zoxide_pwd) --interactive -- $query)
        and __zoxide_cd $result
        and builtin commandline --function cancel-commandline repaint
    end
end
complete --command __zoxide_z --no-files --arguments '(__zoxide_z_complete)'

function __zoxide_zi
    set -l result (command zoxide query --interactive -- $argv)
    and __zoxide_cd $result
end

abbr --erase z &>/dev/null
alias z=__zoxide_z

abbr --erase zi &>/dev/null
alias zi=__zoxide_zi

set -Ux PNPM_HOME "/home/edu/.local/share/pnpm"
if not contains $PNPM_HOME $PATH
    set -Ux PATH $PNPM_HOME $PATH
end

set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

fish_add_path /home/edu/.spicetify

starship init fish | source

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/edu/.ghcup/bin $PATH # ghcup-env
