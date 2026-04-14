return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- load before other plugins
		opts = {
			flavour = "latte", -- latte, frappe, macchiato, mocha
			integrations = {
				blink_cmp = true,
				mason = true,
				treesitter = true,
				which_key = true,
				telescope = true,
			},
		},
		init = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
