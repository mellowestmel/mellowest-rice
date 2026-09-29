local KEYBINDS_CONSTANTS = _G.KEYBINDS
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

local function _changeWorkspace(steps, moveWindow)
    return function()
        local workspace = hl.get_active_workspace()
        if not workspace then return end

        local target = workspace.id + steps
        target = math.max(
            math.min(target, GENERAL_CONSTANTS.WORKSPACE_AMOUNT),
            1
        )

        if moveWindow then
            hl.dispatch(hl.dsp.window.move({ workspace = target }))
        else
            hl.dispatch(hl.dsp.focus({ workspace = target }))
        end
    end
end

--// Applications
_bindAction(BINDS.OPEN_APPLICATION_LAUNCHER, hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.APPLICATION_LAUNCHER))
_bindAction(BINDS.OPEN_TERMINAL, hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.TERMINAL))
_bindAction(BINDS.OPEN_BROWSER, hl.dsp.exec_cmd(GENERAL_CONSTANTS.APPLICATIONS.BROWSER))

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