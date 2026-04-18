vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.netrw_liststyle = 3

vim.keymap.set("n", "<leader>pv", function()
	vim.cmd.Ex()
        vim.cmd('setlocal number')
        vim.cmd('setlocal relativenumber')
end, { desc = "Open file explorer" })

vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- See `:help wincmd` for all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move to right window" })

-- Move selected line up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- C-v is intercepted on WSL
vim.keymap.set("n", "<C-q>", "<C-v>", { desc = "Visual block mode" })

-- Center view while scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up (centered)" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search result (centered)" })

-- vim.keymap.set('x', '<C-p>', [["_dP]], {desc = 'replace without modifying yank register'})
vim.keymap.set({ "n", "v" }, "<leader>-d", [[\_d]], { desc = "Delete without yanking" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- bufferline tab navigation
for i = 1, 19 do
    vim.keymap.set("n", "<leader>" .. i, function()
        require("bufferline").go_to_buffer(i, true)
    end, { noremap = true, silent = true})
end
