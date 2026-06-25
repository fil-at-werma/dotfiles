if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    alias ls="eza --color=always --icons=always --long"
    alias up="sudo dnf upgrade -y && flatpak update"
end
starship init fish | source
zoxide init fish | source
fzf --fish | source
jj util completion fish | source
