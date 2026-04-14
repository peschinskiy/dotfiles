return {
	{
		"saghen/blink.cmp",
		version = "*",
		opts = {
			keymap = { preset = "super-tab" },
			completion = {
				documentation = { auto_show = true, auto_show_delay_ms = 400 },
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
			signature = { enabled = true },
		},
	},
}
