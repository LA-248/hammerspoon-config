local hyper = { "cmd", "ctrl", "alt", "shift" }

-- Bind Hyper + l to lock the screen
hs.hotkey.bind(hyper, "l", function()
	hs.caffeinate.lockScreen()
end)

-- Google Chrome keybind (Hyper + r)
hs.hotkey.bind(hyper, "r", function()
	hs.application.launchOrFocus("Google Chrome")
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

