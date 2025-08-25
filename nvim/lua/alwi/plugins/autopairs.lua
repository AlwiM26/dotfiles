return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" }, -- Only run this plugin whenever we in insert mode
	config = function()
		local autopairs = require("nvim-autopairs")

		autopairs.setup({
			check_ts = true,
			ts_config = {
				lua = { "string" },
				javascript = { "template_string" },
				java = false,
			},
		})
	end,
}
