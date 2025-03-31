local opt = vim.opt

opt.number = true
opt.relativenumber = false

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

vim.o.guifont = "MesloLGS Nerd Font:h11"
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.g.compiler_gcc_ignore_unmatched_lines = true

vim.g.neovide_cursor_animation_length=0.02
vim.g.neovide_cursor_trail_size=0.3
