return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local keymap = vim.keymap

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                local opts = { buffer = ev.buf, silent = true }

                -- set keybinds
                opts.desc = "Show LSP references"
                keymap.set("n", "gR", "<cmd>FzfLua lsp_references<CR>", opts) -- show definition, references

                opts.desc = "Go to declaration"
                keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

                opts.desc = "Show LSP definitions"
                keymap.set("n", "gd", "<cmd>FzfLua lsp_definitions<CR>", opts) -- show lsp definitions
                keymap.set("n", "C-]", "<cmd>FzfLua lsp_definitions<CR>", opts) -- show lsp definitions

                opts.desc = "Show LSP implementations"
                keymap.set("n", "gi", "<cmd>FzfLua lsp_implementations<CR>", opts) -- show lsp implementations

                opts.desc = "Show LSP type definitions"
                keymap.set("n", "gt", "<cmd>FzfLua lsp_type_definitions<CR>", opts) -- show lsp type definitions

                opts.desc = "Show buffer diagnostics"
                keymap.set("n", "<leader>D", "<cmd>FzfLua diagnostics_document<CR>", opts) -- show  diagnostics for file

                opts.desc = "Show line diagnostics"
                keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

                opts.desc = "Go to previous diagnostic"
                keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

                opts.desc = "Go to next diagnostic"
                keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

                opts.desc = "Show documentation for what is under cursor"
                keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
            end,
        })

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
            capabilities = capabilities
        })
    end
}
