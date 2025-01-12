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

