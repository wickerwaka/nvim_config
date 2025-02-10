return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local capabilities = cmp_nvim_lsp.default_capabilities()

        lspconfig["clangd"].setup({
            capabilities = capabilities
        })
        lspconfig["pylsp"].setup({
            capabilities = capabilities,
            settings = {
                pylsp = {
                    plugins = {
                        pycodestyle = { enabled=false }
                    }
                }
            },
        })
        
        lspconfig["rust_analyzer"].setup({
            capabilities = capabilities,
        })

        lspconfig["verible"].setup({
            capabilities = capabilities,
            cmd = {'verible-verilog-ls', '--rules_config_search'},
        })
    end
}
