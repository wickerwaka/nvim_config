return {}

--[[

return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lspconfig = vim.lsp.config
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local capabilities = cmp_nvim_lsp.default_capabilities()

        lspconfig('*', {capabilities = capabilities})

        lspconfig("pylsp", {
            settings = {
                pylsp = {
                    plugins = {
                        pycodestyle = { enabled=false }
                    }
                }
            },
        })
        
        lspconfig("verible", {
            cmd = {'verible-verilog-ls', '--rules_config_search'},
        })
    end
}
]]--

