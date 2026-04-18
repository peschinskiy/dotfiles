return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			options = {
				separator_style = "thick",
				numbers = "ordinal",
				diagnostics = "nvim_lsp",
				-- diagnostics_indicator = function(count, level, diagnostics_dict, context)
				-- 	return "(" .. count .. ")"
				-- end,
			},
		},
		keys = {
			{ "gt", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
			{ "gT", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
			{ "<leader>bd", "<cmd>bdelete<cr>", desc = "Delete buffer" },
			-- {
			-- 	"gp",
			-- 	function()
			-- 		local count = vim.v.count
			-- 		if count > 0 then
			-- 			require("bufferline").go_to(count, true)
			-- 		end
			-- 	end,
			-- 	desc = "Go to buffer by position",
			-- },
		},
	},
}
