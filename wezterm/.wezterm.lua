local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Gruvbox Material (Gogh)"

config.font = wezterm.font("JetBrainsMono Nerd Font")

config.font_size = 11.5

config.enable_tab_bar = false
config.initial_rows = 40
config.initial_cols = 150

config.window_decorations = "RESIZE"
config.window_padding = {
	left = 2,
	right = 2,
	top = 2,
	bottom = 2,
}

config.keys = {
	{
		key = "F11",
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
