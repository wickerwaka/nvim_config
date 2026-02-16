vim.diagnostic.config({
    virtual_text = true,  -- Enable inline virtual text
    signs = true,         -- Show diagnostic signs in the gutter (optional, but helpful)
    underline = true,     -- Underline problematic code (optional)
    float = {             -- Configuration for the floating window
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})

--vim.lsp.config('verible', {
--    cmd = { 'verible-verilog-ls', '--rules_config_search' },
--    -- root_markers = { 'verible.list', '.git' }
--})

vim.lsp.config("slang-server", {
  cmd = { "slang-server" },
  root_markers = { ".git", ".slang" },
  filetypes = {
    "systemverilog",
    "verilog",
  },
})

vim.lsp.enable("slang-server")

