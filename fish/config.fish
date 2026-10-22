if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    alias ls="eza --color=always --icons=always --long"
    alias la="eza -a --color=always --icons=always --long"
    alias up="sudo dnf --refresh && sudo dnf upgrade -y && flatpak update"
    alias t="todo.sh"
    alias ta="todo.sh add '$(date -Idate)$1'"
end
starship init fish | source
zoxide init fish | source
fzf --fish | source
if command -sq jj
    jj util completion fish | source
end
