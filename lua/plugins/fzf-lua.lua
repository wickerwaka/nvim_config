return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- calling `setup` is optional for customization
        local fzf = require('fzf-lua')
        fzf.setup({})

        local km = vim.keymap
        km.set('n', '<C-p>', fzf.files, { desc = "Fuzzy find file" })
        km.set('n', '<leader>ff', fzf.files, { desc = "Fuzzy find file" })
        km.set('n', '<leader>fr', fzf.oldfiles, { desc = "Fuzzy find file" })
        km.set('n', '<leader>fg', fzf.live_grep_glob, { desc = "Fuzzy grep" })
        km.set('n', '<leader>fb', fzf.buffers, { desc = "Fuzzy find buffer" })
        km.set('n', '<leader>fh', fzf.helptags, { desc = "Fuzzy find help" })
        km.set('n', '<leader>fc', fzf.grep_cword, { desc = "Fuzzy find current string" })
    end
}
