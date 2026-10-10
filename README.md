# mellowest-rice
A yellow-black themed, stiff-feeling CachyOS rice inspired by [my website](https://www.mellowestmel.com/)!

This rice uses Hyprland as its compositor.

## Installation
### !! PLEASE BACK UP YOUR CONFIG FILES !!

1. Install CachyOS using the graphical installer. I personally recommend Limine because I think it looks nice.
2. Install the appropriate drivers for your hardware, especially your GPU.
3. Install all packages listed in [`packages.txt`](packages.txt).
4. Clone this repository and symlink the configuration files to their respective locations (recommended), or copy them manually.
5. Symlink or copy `color-schemes/`, `fonts/` and `scripts/` to the destination directories listed below.

## Directory mappings
- `color-schemes/` → `~/.local/share/color-schemes/`
- `fonts/` → `~/.local/share/fonts/`
- `scripts/` → `~/.local/share/scripts/`

## Notes
You will have to change monitor names in the following files:
`waybar/config.jsonc` change "output"
`hypr/hyprlock.conf` change $main_monitor

This rice is a work in progress, so configuration and installation instructions may change in the future.