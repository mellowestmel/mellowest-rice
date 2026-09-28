local APPEARANCE_CONSTANTS = _G.APPEARANCE

local CURSOR = APPEARANCE_CONSTANTS.CURSOR
local GTK = APPEARANCE_CONSTANTS.GTK

hl.config({
    general = {
        border_size = 0,
        gaps_out = 15,
        gaps_in = 5,

        col = {
            inactive_border = "#000",
            active_border = "#000",

            nogroup_border_active = "#000",
            nogroup_border = "#000"
        },

        layout = "dwindle",
        
        no_focus_fallback = false,

        extend_border_grab_area = 15,
        resize_corner = 0,
        resize_on_border = true,

        allow_tearing = false,

        modal_parent_blocking = true
    },

    decoration = {
        rounding_power = 2,
        rounding = 0,

        inactive_opacity = 1,
        active_opacity = 1,
        fullscreen_opacity = 1,

        dim_modal = true,
        dim_inactive = false,
        dim_strength = .5,
        dim_special = .2,
        dim_around = .4,

        screen_shader = nil,

        border_part_of_window = true,

        shadow = { enabled = false },
        glow = { enabled = false },

        motion_blur = { enabled = false },
        blur = { enabled = false }
    },

    xwayland = {
        force_zero_scaling = true
    }
})

hl.env("GTK_THEME", GTK.THEME)

hl.env("HYPRCURSOR_THEME", CURSOR.THEME)
hl.env("HYPRCURSOR_SIZE", CURSOR.SIZE)

hl.env("XCURSOR_THEME", CURSOR.THEME)
hl.env("XCURSOR_SIZE", CURSOR.SIZE)