-- Bind Cmd + Shift + L to lock the screen
hs.hotkey.bind({"cmd", "shift"}, "L", function()
    hs.caffeinate.lockScreen()
end)

-- Google Chrome keybind
local lastCmdTap = 0
local cmdTapCount = 0
local cmdTapTimeout = 0.3 -- seconds

local cmdWatcher = hs.eventtap.new({hs.eventtap.event.types.flagsChanged}, function(event)
    local flags = event:getFlags()
    local cmdPressed = flags.cmd

    if event:getKeyCode() == 55 or event:getKeyCode() == 54 then -- 55 = left cmd, 54 = right cmd
        if cmdPressed then
            local now = hs.timer.secondsSinceEpoch()
            if now - lastCmdTap < cmdTapTimeout then
                cmdTapCount = cmdTapCount + 1
            else
                cmdTapCount = 1
            end
            lastCmdTap = now

            if cmdTapCount == 2 then
                hs.application.launchOrFocus("Google Chrome")
                cmdTapCount = 0
            end
        end
    end

    return false
end)

cmdWatcher:start()

-- VS Code keybind
local lastShiftTap = 0
local shiftTapCount = 0
local shiftTapTimeout = 0.3 -- seconds

local shiftWatcher = hs.eventtap.new({hs.eventtap.event.types.flagsChanged}, function(event)
    local flags = event:getFlags()
    local shiftPressed = flags.shift

    if event:getKeyCode() == 56 or event:getKeyCode() == 60 then -- 56 = left shift, 60 = right shift
        if shiftPressed then
            local now = hs.timer.secondsSinceEpoch()
            if now - lastShiftTap < shiftTapTimeout then
                shiftTapCount = shiftTapCount + 1
            else
                shiftTapCount = 1
            end
            lastShiftTap = now

            if shiftTapCount == 2 then
                hs.application.launchOrFocus("Visual Studio Code")
                shiftTapCount = 0
            end
        end
    end

    return false
end)

shiftWatcher:start()

-- Ghostty keybind
local lastCapsTap = 0
local capsTapCount = 0
local capsTapTimeout = 0.3 -- seconds

local capsWatcher = hs.eventtap.new({hs.eventtap.event.types.flagsChanged}, function(event)
    -- 57 = Caps Lock key
    if event:getKeyCode() == 57 then
        local now = hs.timer.secondsSinceEpoch()
        if now - lastCapsTap < capsTapTimeout then
            capsTapCount = capsTapCount + 1
        else
            capsTapCount = 1
        end
        lastCapsTap = now

        if capsTapCount == 2 then
            hs.application.launchOrFocus("Ghostty")
            capsTapCount = 0
        end
    end

    return false
end)

capsWatcher:start()

-- Spotify keybind
local lastCtrlTap = 0
local ctrlTapCount = 0
local ctrlTapTimeout = 0.3 -- seconds

local ctrlWatcher = hs.eventtap.new({hs.eventtap.event.types.flagsChanged}, function(event)
    local flags = event:getFlags()
    local ctrlPressed = flags.ctrl

    -- 59 = left ctrl, 62 = right ctrl
    if event:getKeyCode() == 59 or event:getKeyCode() == 62 then
        if ctrlPressed then
            local now = hs.timer.secondsSinceEpoch()
            if now - lastCtrlTap < ctrlTapTimeout then
                ctrlTapCount = ctrlTapCount + 1
            else
                ctrlTapCount = 1
            end
            lastCtrlTap = now

            if ctrlTapCount == 2 then
                hs.application.launchOrFocus("Spotify")
                ctrlTapCount = 0
            end
        end
    end

    return false
end)

ctrlWatcher:start()