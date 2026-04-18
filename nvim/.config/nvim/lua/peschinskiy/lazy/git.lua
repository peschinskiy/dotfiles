return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			local gs = require("gitsigns")
			gs.setup({
				current_line_blame = true,
				current_line_blame_opts = {
					delay = 500,
				},
				numhl = true,
			})
			-- Actions
			vim.keymap.set("n", "<leader>hp", gs.preview_hunk_inline, { desc = "[H]unk [P]review inline" })
			vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { desc = "[H]unk [S]tage" })
			vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { desc = "[H]unk [R]eset" })
			vim.keymap.set("v", "<leader>hs", function()
				gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "[H]unk [S]tage selection" })
			vim.keymap.set("v", "<leader>hr", function()
				gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { desc = "[H]unk [R]eset selection" })

			vim.keymap.set("n", "<leader>gS", gs.stage_buffer, { desc = "[G]it [S]tage buffer" })
			vim.keymap.set("n", "<leader>gR", gs.reset_buffer, { desc = "[G]it [R]eset buffer" })
			vim.keymap.set("n", "<leader>gd", gs.diffthis, { desc = "[G]it [D]iff" })
		end,
	},
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>gs", function()
				vim.cmd("tab Git")
			end, { desc = "[G]it [S]tatus" })
		end,
	},
}
