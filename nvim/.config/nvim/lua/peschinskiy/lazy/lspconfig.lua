return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"mason-org/mason-lspconfig.nvim",
			"saghen/blink.cmp",
		},
		config = function()
			require("conform").setup({
				formatters_by_ft = {},
			})

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(args)
					local buf = args.buf
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = buf, desc = "Go to definition" })
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = buf, desc = "Go to declaration" })
					vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = buf, desc = "Go to references" })
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = buf, desc = "Go to implementation" })
					vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, { buffer = buf, desc = "Hover docs" })
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = buf, desc = "Rename symbol" })
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = buf, desc = "Code action" })
					vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { buffer = buf, desc = "Prev diagnostic" })
					vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { buffer = buf, desc = "Next diagnostic" })
					vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { buffer = buf, desc = "Show diagnostic" })
				end,
			})

			local capabilities = require("blink.cmp").get_lsp_capabilities()

			-- C++
			vim.lsp.config("clangd", { capabilities = capabilities })

			-- Python
			vim.lsp.config("pyright", { capabilities = capabilities })

			-- Lua
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				settings = {
					Lua = {
						runtime = { version = "LuaJIT" },
						workspace = { checkThirdParty = false },
						diagnostics = { globals = { "vim" } },
					},
				},
			})

			-- Go
			vim.lsp.config("gopls", { capabilities = capabilities })

			-- Rust
			vim.lsp.config("rust_analyzer", { capabilities = capabilities })

			-- enable all configured servers
			vim.lsp.enable({ "clangd", "pyright", "lua_ls", "gopls", "rust_analyzer" })
		end,
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "clangd", "pyright", "lua_ls", "gopls", "rust_analyzer" },
		},
	},
}
