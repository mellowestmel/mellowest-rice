_G = {}

_G.GENERAL = {
    WORKSPACE_AMOUNT = 9,

    APPLICATIONS = {
        APPLICATION_LAUNCHER = "rofi -show drun",
        FILE_MANAGER = "alacritty -e yazi",

        TERMINAL = "alacritty",

        NOTIFICATION_DAEMON = "swaync",
        
        WALLPAPER = "neowall",
        BAR = "waybar",

        BROWSER = "zen-browser"
    },

    WINDOW_CLASSES = {
        VOLUME_CONTROL = "org.pulseaudio.pavucontrol",
    },
}

_G.APPEARANCE = {
    GTK = {
        THEME = "Adwaita:dark"
    },

    CURSOR = {
        THEME = "Bibata-Original-Classic",
        SIZE = "24"
    }
}

_G.KEYBINDS = {
    MAIN_MOD = "SUPER",
}

_G.KEYBINDS.BINDS = {
    --// APPLICATIONS
    OPEN_APPLICATION_LAUNCHER = _G.KEYBINDS.MAIN_MOD .. " + R",
    OPEN_TERMINAL = _G.KEYBINDS.MAIN_MOD .. " + T",
    OPEN_BROWSER = _G.KEYBINDS.MAIN_MOD .. " + B",

    --// WINDOW MANAGEMENT
    CLOSE_WINDOW = _G.KEYBINDS.MAIN_MOD .. " + C",
    FULLSCREEN_WINDOW = "F11",
    FLOAT_WINDOW = _G.KEYBINDS.MAIN_MOD .. " + SPACE",
    MOVE_WINDOW = _G.KEYBINDS.MAIN_MOD .. " + mouse:272",

    --// FOCUS
    FOCUS_LEFT = _G.KEYBINDS.MAIN_MOD .. " + Left",
    FOCUS_RIGHT = _G.KEYBINDS.MAIN_MOD .. " + Right",
    FOCUS_UP = _G.KEYBINDS.MAIN_MOD .. " + Up",
    FOCUS_DOWN = _G.KEYBINDS.MAIN_MOD .. " + Down",

    --// WORKSPACES
    WORKSPACE_UP = {
        _G.KEYBINDS.MAIN_MOD .. " + Up",
        _G.KEYBINDS.MAIN_MOD .. " + W",
    },

    WORKSPACE_DOWN = {
        _G.KEYBINDS.MAIN_MOD .. " + Down",
        _G.KEYBINDS.MAIN_MOD .. " + S",
    },

    MOVE_WINDOW_WORKSPACE_UP = {
        _G.KEYBINDS.MAIN_MOD .. " + SHIFT + Up",
        _G.KEYBINDS.MAIN_MOD .. " + SHIFT + W",
    },

    MOVE_WINDOW_WORKSPACE_DOWN = {
        _G.KEYBINDS.MAIN_MOD .. " + SHIFT + Down",
        _G.KEYBINDS.MAIN_MOD .. " + SHIFT + S",
    },
}