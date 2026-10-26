if status is-interactive
    set -Ux EDITOR /usr/bin/hx
    set -Ux VISUAL /usr/bin/hx
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    alias ls="eza --color=always --icons=always --long"
    alias la="eza -a --color=always --icons=always --long"
    alias up="sudo dnf upgrade -y -q && sudo dnf autoremove -y -q && flatpak update"
    alias t="todo.sh"
    alias ta="todo.sh add '$(date -Idate)$1'"
    alias add-key="ssh-add ~/.ssh/$1"
    alias wiki="z wiki && hx '~/OneDrive/wiki/00-09 Index/00.00 Index.md' && z -"
    alias btnet="bt-network -c 40:5E:F6:61:4B:C9 nap & disown"
end
starship init fish | source
zoxide init fish | source
fzf --fish | source
if command -sq jj
    jj util completion fish | source
end
