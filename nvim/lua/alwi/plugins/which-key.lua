return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		icons = {
			mappings = false,
		},
		spec = {
			{ "<leader>b", group = "Buffers" },
			{ "<leader>e", group = "Files" },
			{ "<leader>f", group = "Finds" },
			{ "<leader>h", group = "Git" },
			{ "<leader>m", group = "Format line" },
			{ "<leader>n", group = "Remove Highlight" },
			{ "<leader>s", group = "Split screen" },
			{ "<leader>w", group = "Sessions" },
			{ "<leader>x", group = "Diagnostics" },
		},
	},
}
