require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-Up>", ":resize -2<CR>", { desc = "Decrease Height" })
map("n", "<C-Down>", ":resize +2<CR>", { desc = "Increase Height" })
map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease Width" })
map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase Width" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
