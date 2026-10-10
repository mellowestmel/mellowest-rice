local KEYBINDS_CONSTANTS = _G.KEYBINDS
local MONITOR_CONSTANTS = _G.MONITOR
local GENERAL_CONSTANTS = _G.GENERAL

local BINDS = KEYBINDS_CONSTANTS.BINDS

--// Helpers
local function _bindAction(bind, dispatcher)
    local dispatcherFunction = dispatcher

    if type(dispatcher) ~= "function" then
        dispatcherFunction = function()
            hl.dispatch(dispatcher)
        end
    end

    if type(bind) == "table" then
        for _, keybind in ipairs(bind) do
            hl.bind(keybind, dispatcherFunction)
        end
    else
        hl.bind(bind, dispatcherFunction)
    end
end

--// Workspace navigation
local function _changeWorkspace(steps, moveWindow)
    return function()
        local monitor = hl.get_active_monitor()
        if not monitor then return end

        -- Only the primary monitor supports workspace navigation.
        if monitor.name ~= MONITOR_CONSTANTS.MAIN_MONITOR then
            return
        end

        local workspace = hl.get_active_workspace()
        if not workspace then return end

        local target = math.max(
            math.min(
                workspace.id + steps,
                9
            ),
            1
        )

        if moveWindow then
            hl.dispatch(hl.dsp.window.move({
                workspace = target
            }))
        else
            hl.dispatch(hl.dsp.focus({
                workspace = target,
                on_current_monitor = true
            }))
        end
    end
end

--// Applications
_bindAction(BINDS.OPEN_APPLICATION_LAUNCHER, hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.APPLICATION_LAUNCHER))
_bindAction(BINDS.OPEN_FILE_MANAGER, hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.FILE_MANAGER))
_bindAction(BINDS.OPEN_TERMINAL, hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.TERMINAL))
_bindAction(BINDS.OPEN_BROWSER, hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.BROWSER))

--// Screenshot
_bindAction(BINDS.FULL_SCREENSHOT, hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.FULL_SCREENSHOT))
_bindAction(BINDS.SCREENSHOT, hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.SCREENSHOT))

--// Security
_bindAction(BINDS.QUICK_SHUTDOWN, hl.dsp.exec_cmd("shutdown now"))
_bindAction(BINDS.LOCK, hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.LOCKSCREEN_MANAGER))

--// Window management
_bindAction(BINDS.CLOSE_WINDOW, hl.dsp.window.close())
_bindAction(BINDS.FULLSCREEN_WINDOW, hl.dsp.window.fullscreen())
_bindAction(BINDS.FLOAT_WINDOW, hl.dsp.window.float({ action = "toggle" }))
_bindAction(BINDS.MOVE_WINDOW, hl.dsp.window.drag())

--// Focus
_bindAction(BINDS.FOCUS_LEFT, hl.dsp.focus({ direction = "left" }))
_bindAction(BINDS.FOCUS_RIGHT, hl.dsp.focus({ direction = "right" }))
_bindAction(BINDS.FOCUS_UP, hl.dsp.focus({ direction = "up" }))
_bindAction(BINDS.FOCUS_DOWN, hl.dsp.focus({ direction = "down" }))

--// Switch workspace
_bindAction(BINDS.WORKSPACE_UP, _changeWorkspace(-1, false))
_bindAction(BINDS.WORKSPACE_DOWN, _changeWorkspace(1, false))

--// Move Windows to Workspaces
_bindAction(BINDS.MOVE_WINDOW_WORKSPACE_UP, _changeWorkspace(-1, true))
_bindAction(BINDS.MOVE_WINDOW_WORKSPACE_DOWN, _changeWorkspace(1, true))