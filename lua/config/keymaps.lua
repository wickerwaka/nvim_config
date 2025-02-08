vim.g.mapleader = " "


local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Smooth movement through wrapped lines
keymap.set("n", "<Down>", "gj", {})
keymap.set("n", "<Up>", "gk", {})
keymap.set("v", "<Down>", "gj", {})
keymap.set("v", "<Up>", "gk", {})
keymap.set("i", "<Down>", "<C-o>gj", {})
keymap.set("i", "<Up>", "<C-o>gk", {})

-- Indent, stay in visual mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Shift visual selected line down
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Shift visual selected line up
