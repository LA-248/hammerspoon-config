-- Bind Meh + y to lock the screen
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "y", function()
    hs.caffeinate.lockScreen()
end)

-- Google Chrome keybind (Meh + f)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "f", function()
    hs.application.launchOrFocus("Google Chrome")
end)

-- VS Code keybind (Meh + r)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "r", function()
    hs.application.launchOrFocus("Visual Studio Code")
end)

-- Ghostty keybind (Meh + e)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "e", function()
    hs.application.launchOrFocus("Ghostty")
end)

-- Spotify keybind (Meh + g)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "g", function()
    hs.application.launchOrFocus("Spotify")
end)

-- ChatGPT keybind (Meh + n)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "n", function()
    hs.application.launchOrFocus("ChatGPT")
end)

-- Microsoft Teams keybind (Meh + w)
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "w", function()
    hs.application.launchOrFocus("Microsoft Teams")
end)

-- Reload Hammerspoon config
hs.hotkey.bind({ "ctrl", "alt", "shift" }, "h", function()
  hs.reload()
end)
