#!/usr/bin/env bash

# Dynamically fetch the system's official Pictures directory
PICTURES_DIR="$(xdg-user-dir PICTURES 2>/dev/null)"

# Fallback to $HOME/Pictures if xdg-user-dir isn't installed or returns empty
if [ -z "$PICTURES_DIR" ]; then
    PICTURES_DIR="$HOME/Pictures"
fi

SAVE_DIR="$PICTURES_DIR/screenshots"
mkdir -p "$SAVE_DIR"

FILENAME="$SAVE_DIR/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

# Slurp customization flags
# -b: Background color (RGBA hex)
# -c: Border color (RGBA hex)
# -s: Selection fill color (RGBA hex)
# -w: Border weight/thickness in pixels
SLURP_ARGS="-b #00000080 -c #E4E78C -s #E4E78C33 -w 2"

case "$1" in
    area)
        # Select an area with custom slurp flags, copy to clipboard, and save file
        grim -g "$(slurp $SLURP_ARGS)" - | tee "$FILENAME" | wl-copy
        ;;
    full)
        # Full screen, copy to clipboard, and save file
        grim - | tee "$FILENAME" | wl-copy
        ;;
    *)
        echo "Usage: $0 {area|full}"
        exit 1
        ;;
esac

# Check if file was created (in case selection was canceled)
if [ -s "$FILENAME" ]; then
    if command -v notify-send &> /dev/null; then
        notify-send \
            --hint=string:image-path:"$FILENAME" \
            "Screenshot Captured" \
            "Saved to $(basename "$FILENAME") & copied to clipboard."
    fi
else
    # Remove empty file if canceled slurp selection
    rm -f "$FILENAME"
fi