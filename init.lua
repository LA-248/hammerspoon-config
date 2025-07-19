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

-- ChatGPT desktop app keybind
local lastCmdCTap = 0
local cmdCTapCount = 0
local cmdCTapTimeout = 0.3 -- seconds

local cmdCWatcher = hs.eventtap.new({hs.eventtap.event.types.keyDown}, function(event)
    local flags = event:getFlags()
    local keyCode = event:getKeyCode()

    -- 8 = "C" key
    if keyCode == 8 and flags.cmd and not (flags.alt or flags.shift or flags.ctrl) then
        local now = hs.timer.secondsSinceEpoch()
        if now - lastCmdCTap < cmdCTapTimeout then
            cmdCTapCount = cmdCTapCount + 1
        else
            cmdCTapCount = 1
        end
        lastCmdCTap = now

        if cmdCTapCount == 2 then
            hs.application.launchOrFocus("ChatGPT")
            cmdCTapCount = 0
        end
    end

    return false
end)

cmdCWatcher:start()

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