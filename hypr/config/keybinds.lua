local KEYBINDS_CONSTANTS = _G.KEYBINDS
local GENERAL_CONSTANTS = _G.GENERAL

local BINDS = KEYBINDS_CONSTANTS.BINDS

--// Applications
hl.bind(
    BINDS.OPEN_APPLICATION_LAUNCHER,
    hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.APPLICATION_LAUNCHER)
)

hl.bind(
    BINDS.OPEN_TERMINAL,
    hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.TERMINAL)
)

hl.bind(
    BINDS.OPEN_BROWSER,
    hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.BROWSER)
)

--// Window management
hl.bind(
    BINDS.CLOSE_WINDOW,
    hl.dsp.window.close()
)

hl.bind(
    BINDS.FULLSCREEN_WINDOW,
    hl.dsp.window.fullscreen()
)

hl.bind(
    BINDS.FLOAT_WINDOW,
    hl.dsp.window.float({ action = "toggle" })
)

--// Focus
hl.bind(
    BINDS.FOCUS_LEFT,
    hl.dsp.focus({ direction = "left" })
)

hl.bind(
    BINDS.FOCUS_RIGHT,
    hl.dsp.focus({ direction = "right" })
)

hl.bind(
    BINDS.FOCUS_UP,
    hl.dsp.focus({ direction = "up" })
)

hl.bind(
    BINDS.FOCUS_DOWN,
    hl.dsp.focus({ direction = "down" })
)

--// Workspaces
for number = 1, GENERAL_CONSTANTS.WORKSPACE_COUNT do
    hl.bind(
        KEYBINDS_CONSTANTS.MAIN_MOD .. " + " .. number,
        hl.dsp.focus({ workspace = number })
    )

    hl.bind(
        KEYBINDS_CONSTANTS.MAIN_MOD .. " + SHIFT + " .. number,
        hl.dsp.window.move({ workspace = number })
    )
end