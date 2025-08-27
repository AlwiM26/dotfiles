return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
		},
		{
			"roobert/tailwindcss-colorizer-cmp.nvim",
			config = function()
				require("tailwindcss-colorizer-cmp").setup({
					color_square_width = 1,
				})
			end,
		},
	},
	version = "1.*",
	opts = {
		keymap = {
			preset = "default",

			-- Custom keymaps
			["<CR>"] = { "accept", "fallback" },

			["<C-k>"] = { "select_prev", "fallback" },
			["<C-j>"] = { "select_next", "fallback" },

			["<C-p>"] = { "scroll_documentation_up", "fallback" },
			["<C-n>"] = { "scroll_documentation_down", "fallback" },
		},
		appearance = { nerd_font_variant = "mono" },
		signature = { enabled = true },
		completion = {
			menu = {
				draw = {
					columns = { { "label", "label_description", gap = 1 }, { "kind" } },
				},
			},
			list = {
				selection = { preselect = false },
			},
		},
		snippets = { preset = "luasnip" },
		sources = {
			default = { "lsp", "path", "buffer", "snippets" },
		},
	},
	opts_extend = { "sources.default" },
	config = function(_, opts)
		require("blink.cmp").setup(opts)
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
