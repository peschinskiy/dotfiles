return {
	{
                "akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			options = {
				separator_style = "slant",
				diagnostics = "nvim_lsp",
			},
		},
		keys = {
			{ "gt", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
			{ "gT", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
			{
				"gp",
				function()
					local count = vim.v.count
					if count > 0 then
						require("bufferline").go_to(count, true)
					end
				end,
				desc = "Go to buffer by position",
			},
			{ "<leader>bd", "<cmd>bdelete<cr>", desc = "Delete buffer" },
		},
	},
}
