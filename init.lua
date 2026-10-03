local hyper = { "cmd", "ctrl", "alt", "shift" }

-- Bind Hyper + 0 to lock the screen
hs.hotkey.bind(hyper, "0", function()
	hs.caffeinate.lockScreen()
end)

-- LibreWolf keybind (Hyper + r)
hs.hotkey.bind(hyper, "r", function()
	hs.application.launchOrFocus("LibreWolf")
end)

-- Ghostty keybind (Hyper + j)
hs.hotkey.bind(hyper, "j", function()
	hs.application.launchOrFocus("Ghostty")
end)

-- Spotify keybind (Hyper + u)
hs.hotkey.bind(hyper, "u", function()
	hs.application.launchOrFocus("Spotify")
end)

-- Microsoft Teams keybind (Hyper + m)
hs.hotkey.bind(hyper, "m", function()
	hs.application.launchOrFocus("Microsoft Teams")
end)
