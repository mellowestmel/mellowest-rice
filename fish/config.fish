source /usr/share/cachyos-fish-config/cachyos-config.fish
bind \t complete-and-search

if test (tty) = /dev/tty1
    exec start-hyprland
end