return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufnewFile" },
	main = "ibl",
	opts = {
		indent = {
			char = "┊",
		},
	},
}
