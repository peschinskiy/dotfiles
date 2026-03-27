return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build='make' },
        { 'nvim-telescope/telescope-ui-select.nvim' },
    },
    config = function()
        require('telescope').setup({})

        pcall(require('telescope').load_extension, 'fzf')
        pcall(require('telescope').load_extension, 'ui-select')

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>sf', function()
            require('telescope.builtin').find_files({
                hidden = true,
            })
        end, {desc = '[S]earch [F]iles'})
        vim.keymap.set('n', '<leader>sr', builtin.git_files, {desc = '[S]earch Git [R]epository Files'})
        vim.keymap.set({ 'n', 'v' }, '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
        vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
        vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
        vim.keymap.set('n', '<leader>sc', builtin.resume, { desc = '[S]earch [C]ontinue' })
        vim.keymap.set('n', '<leader><leader>', builtin.builtin, { desc = 'Search Select Telescope' })
    end
}
