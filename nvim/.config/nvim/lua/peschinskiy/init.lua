require('peschinskiy.set')
require('peschinskiy.remap')
require('peschinskiy.lazy_init')

-- local myGroup = vim.api.nvim_create_augroup('peschinskiy', {})

vim.o.shada = "!,'1000,<50,s10,h"

-- Manage autosessions
vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
        vim.schedule(function()
            if vim.fn.filereadable('.session.vim') == 1 then
                vim.cmd('source .session.vim')
            end
        end)
    end
})

vim.api.nvim_create_autocmd('VimLeavePre', {
    callback = function()
        vim.cmd('mksession! .session.vim')
    end
})
