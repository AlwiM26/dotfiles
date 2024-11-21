local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.colors = {
	-- Gruvbox-Material Dark
	foreground = "#D4BE98", -- Default text color
	background = "#1D2021", -- Background color
	cursor_bg = "#D4BE98", -- Cursor background
	cursor_border = "#D4BE98", -- Cursor border
	cursor_fg = "#1D2021", -- Cursor foreground
	selection_bg = "#3C3836", -- Selection background
	selection_fg = "#D4BE98", -- Selection foreground
	ansi = { -- Basic ANSI colors
		"#282828", -- Black
		"#EA6962", -- Red
		"#A9B665", -- Green
		"#D8A657", -- Yellow
		"#7DAEA3", -- Blue
		"#D3869B", -- Magenta
		"#89B482", -- Cyan
		"#D4BE98"  -- White
	},
	brights = { -- Bright ANSI colors
		"#928374", -- Bright Black
		"#EA6962", -- Bright Red
		"#A9B665", -- Bright Green
		"#D8A657", -- Bright Yellow
		"#7DAEA3", -- Bright Blue
		"#D3869B", -- Bright Magenta
		"#89B482", -- Bright Cyan
		"#FBF1C7"  -- Bright White
	}
}

config.font = wezterm.font("JetBrainsMono Nerd Font")

config.font_size = 11.5

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.keys = {
	{
		key = 'F11',
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
