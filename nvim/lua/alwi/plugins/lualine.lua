return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")
		local default_theme = { fg = "#ebdbb2", bg = "#282828" }
		local inactive_theme = { fg = "#665c54", bg = "#282828" }

		lualine.setup({
			options = {
				-- theme = "gruvbox-material",
				theme = {
					normal = {
						a = { fg = "#f38019", bg = "#282828" },
						b = default_theme,
						y = default_theme,
						z = default_theme,
					},
					inactive = {
						a = { fg = "#f38019", bg = "#282828" },
						b = inactive_theme,
						y = inactive_theme,
						z = default_theme,
					},
				},
				icons_enabled = true,
				component_separators = "",
				section_separators = "",
			},
			sections = {
				lualine_a = {
					{
						"mode",
						fmt = function(str)
							return str:sub(1, 1)
						end,
					},
				},
				lualine_b = {
					{ "buffers" },
				},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {
					{ "branch" },
					{ "diff" },
					{ "diagnostics" },
				},
				lualine_z = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#fe8019" },
					},
					{
						"filetype",
					},
				},
			},
		})
	end,
}
