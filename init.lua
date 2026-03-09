local hyper = { "cmd", "ctrl", "alt", "shift" }

-- Bind Hyper + l to lock the screen
hs.hotkey.bind(hyper, "l", function()
  hs.caffeinate.lockScreen()
end)

-- Google Chrome keybind (Hyper + f)
hs.hotkey.bind(hyper, "f", function()
  hs.application.launchOrFocus("Google Chrome")
end)

-- VS Code keybind (Hyper + r)
hs.hotkey.bind(hyper, "r", function()
  hs.application.launchOrFocus("Visual Studio Code")
end)

-- Ghostty keybind (Hyper + j)
hs.hotkey.bind(hyper, "j", function()
  hs.application.launchOrFocus("Ghostty")
end)

-- Spotify keybind (Hyper + u)
hs.hotkey.bind(hyper, "u", function()
  hs.application.launchOrFocus("Spotify")
end)

-- ChatGPT keybind (Hyper + n)
hs.hotkey.bind(hyper, "n", function()
  hs.application.launchOrFocus("ChatGPT")
end)

-- Microsoft Teams keybind (Hyper + m)
es.hotkey.bind(hyper, "m", function()
  hs.application.launchOrFocus("Microsoft Teams")
end)

-- Reload Hammerspoon config
hs.hotkey.bind(hyper, "v", function()
  hs.reload()
end)