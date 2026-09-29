local GENERAL_CONSTANTS = _G.GENERAL

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