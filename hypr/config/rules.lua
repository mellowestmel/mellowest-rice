local MONITOR_CONSTANTS = _G.MONITOR
local GENERAL_CONSTANTS = _G.GENERAL

-- Workspaces 1–9 belong to the main monitor.
for index = 1, 9 do
    hl.workspace_rule({
        workspace = tostring(index),
        monitor = MONITOR_CONSTANTS.MAIN_MONITOR,
        persistent = true,
        default = (index == 1),
    })
end

--// Dialogs
hl.window_rule({
    name = "float-modals",
    
    match = {
        modal = true,
    },
    
    float = true,
})

--// Utilities
hl.window_rule({
    name = "float-volume-control",
    
    match = {
        initial_class = GENERAL_CONSTANTS.WINDOW_CLASSES.VOLUME_CONTROL,
    },

    float = true,
})

--// Picture-in-Picture
hl.window_rule({
    name = "float-picture-in-picture",

    match = {
        title = "Picture-in-Picture",
    },

    float = true,
    pin = true
})