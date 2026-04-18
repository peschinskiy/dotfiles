return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		wk.setup({
                    preset = "helix",
			delay = 800,
                        filter = function(mapping)
                            -- Filter out mappings without description
                            return mapping.desc and mapping.desc ~= ""
                        end,
			icons = { mappings = vim.g.have_nerd_font },
		})
		-- Groups
		wk.add({
			{ "<leader>b", group = "Buffers" },
			{ "<leader>c", group = "Code" },
			{ "<leader>d", group = "Code" },
			{ "<leader>f", group = "File" },
			{ "<leader>g", group = "Git" },
			{ "<leader>h", group = "Git" },
			{ "<leader>p", group = "File" },
			{ "<leader>r", group = "Code" },
			{ "<leader>s", group = "File" },
		})
		vim.keymap.set("n", "<leader>?", function()
			wk.show({ global = false })
		end, { desc = "Buffer Local Keymaps (which-key)" })
	end,
}
