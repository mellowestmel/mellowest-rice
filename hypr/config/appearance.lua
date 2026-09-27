hl.config({
    general = {
        border_size = 0,
        gaps_out = 15,

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
})