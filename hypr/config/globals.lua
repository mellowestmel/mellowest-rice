_G = {}

_G.GENERAL = {
    WORKSPACE_COUNT = 9,

    APPLICATIONS = {
        APPLICATION_LAUNCHER = "rofi -show drun",
        
        TERMINAL = "kitty",
        BROWSER = "firefox",
    },
}

_G.APPEARANCE = {
    ACCENT_COLOR = "#E4E78C",
}

_G.KEYBINDS = {
    MAIN_MOD = "SUPER",
}

_G.KEYBINDS.BINDS = {
    --// APPLICATIONS
    OPEN_APPLICATION_LAUNCHER = _G.KEYBINDS.MAIN_MOD .. " + R",
    OPEN_TERMINAL = _G.KEYBINDS.MAIN_MOD .. " + Q",
    OPEN_BROWSER = _G.KEYBINDS.MAIN_MOD .. " + B",

    --// WINDOW MANAGEMENT
    CLOSE_WINDOW = _G.KEYBINDS.MAIN_MOD .. " + C",
    FULLSCREEN_WINDOW = "F11",
    FLOAT_WINDOW = _G.KEYBINDS.MAIN_MOD .. " + SPACE",

    --// FOCUS
    FOCUS_LEFT = _G.KEYBINDS.MAIN_MOD .. " + Left",
    FOCUS_RIGHT = _G.KEYBINDS.MAIN_MOD .. " + Right",
    FOCUS_UP = _G.KEYBINDS.MAIN_MOD .. " + Up",
    FOCUS_DOWN = _G.KEYBINDS.MAIN_MOD .. " + Down",
}