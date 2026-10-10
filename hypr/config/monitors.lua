-- Vertical monitor on the left
hl.monitor({
    output = "HDMI-A-2",
    position = "-1080x-580",
    scale = 1,
    transform = 3,
})

-- Main monitor on the right
hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@239.76",
    position = "0x0",
    scale = 1,
    transform = 0,
})