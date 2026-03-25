vim.o.number = true
vim.o.relativenumber = true

vim.o.mouse = 'a'

-- vim.o.showmode = false

vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'

vim.o.updatetime = 250
vim.o.timeoutlen = 500 -- default 1000

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.inccommand = 'split'
-- vim.o.hlsearch
vim.o.incsearch = true

vim.o.scrolloff = 8

vim.o.confirm = true

vim.o.expandtab = true
vim.o.shiftwidth = 4

vim.o.smartindent = true

vim.o.wrap = false
