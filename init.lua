-- Bind Meh + l to lock the screen
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "l", function()
    hs.caffeinate.lockScreen()
end)

-- Google Chrome keybind (Meh + g)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "g", function()
    hs.application.launchOrFocus("Google Chrome")
end)

-- VS Code keybind (Meh + t)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "t", function()
    hs.application.launchOrFocus("Visual Studio Code")
end)

-- Ghostty keybind (Meh + h)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "h", function()
    hs.application.launchOrFocus("Ghostty")
end)

-- Spotify keybind (Meh + y)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "y", function()
    hs.application.launchOrFocus("Spotify")
end)

-- ChatGPT keybind (Meh + n)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "n", function()
    hs.application.launchOrFocus("ChatGPT")
end)

-- Microsoft Teams keybind (Meh + e)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "e", function()
    hs.application.launchOrFocus("Microsoft Teams")
end)

-- Reload Hammerspoon config
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "v", function()
  hs.reload()
end)
