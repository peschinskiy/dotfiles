return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			{ "nvim-telescope/telescope-ui-select.nvim" },
		},
		config = function()
			require("telescope").setup({})

			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "ui-select")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>sf", function()
				require("telescope.builtin").find_files({
					hidden = true,
				})
			end, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader>sr", builtin.git_files, { desc = "[S]earch Git [R]epository Files" })
			vim.keymap.set({ "n", "v" }, "<leader>sw", function()
				builtin.grep_string({ additional_args = { "--hidden" } })
			end, { desc = "[S]earch current [W]ord" })
			vim.keymap.set("n", "<leader>sg", function()
				builtin.live_grep({ additional_args = { "--hidden" } })
			end, { desc = "[S]earch by [G]rep" })
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
			vim.keymap.set("n", "<leader>sc", builtin.resume, { desc = "[S]earch [C]ontinue" })
			vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch [B]uffers" })
			vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
			vim.keymap.set("n", "<leader><leader>", builtin.builtin, { desc = "Search Select Telescope" })
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					file_browser = {},
				},
			})
			require("telescope").load_extension("file_browser")
		end,
		keys = {
			{ "<leader>fb", "<cmd>Telescope file_browser<cr>", desc = "File browser" },
			{
				"<leader>fB",
				"<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
				desc = "File browser (current file dir)",
			},
		},
	},
}
