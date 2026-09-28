hl.curve("easeOut", {
    type = "bezier",
    points = {
        { 0.16, 1.0 },
        { 0.3, 1.0 },
    },
})

hl.curve("easeInOut", {
    type = "bezier",
    points = {
        { 0.65, 0.0 },
        { 0.35, 1.0 },
    },
})

hl.animation({
    leaf = "windows",
    enabled = false,
    speed = 5,
    bezier = "easeOut",
})

hl.animation({
    leaf = "windowsIn",
    enabled = false,
    speed = 5,
    bezier = "easeOut",
    style = "popin 80%",
})

hl.animation({
    leaf = "windowsOut",
    enabled = false,
    speed = 5,
    bezier = "easeInOut",
})

hl.animation({
    leaf = "windowsMove",
    enabled = false,
    speed = 5,
    bezier = "easeOut",
})

hl.animation({
    leaf = "fade",
    enabled = false,
    speed = 5,
    bezier = "easeOut",
})

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 2,
    bezier = "easeOut",
    style = "slidevert"
})