return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		lualine.setup({
			options = {
        theme = "gruvbox-material",
				icons_enabled = true,
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				lualine_a = {
          {"mode"},
          {"buffers"}
        },
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#fe8019" },
					},
					{
						"encoding",
					},
					{
						"fileformat",
					},
					{
						"filetype",
					},
				},
			},
		})
	end,
}

