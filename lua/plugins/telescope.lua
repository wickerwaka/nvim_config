return {}
--[[
return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                path_display = { "smart" },
            }
        })

        telescope.load_extension("fzf")

        local km = vim.keymap
        local builtin = require('telescope.builtin')
        km.set('n', '<leader>ff', builtin.find_files, { desc = "Fuzzy find file" })
        km.set('n', '<leader>fr', builtin.oldfiles, { desc = "Fuzzy find file" })
        km.set('n', '<leader>fg', builtin.live_grep, { desc = "Fuzzy grep" })
        km.set('n', '<leader>fb', builtin.buffers, { desc = "Fuzzy find buffer" })
        km.set('n', '<leader>fh', builtin.help_tags, { desc = "Fuzzy find help" })
        km.set('n', '<leader>fc', builtin.grep_string, { desc = "Fuzzy find current string" })
    end
}
--]]
