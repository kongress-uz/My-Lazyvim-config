-- ~/.config/nvim/lua/config/keymaps.lua

local map = vim.keymap.set

-- Asosiy buyruqlar
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>m", "<cmd>Telescope commands<CR>", { desc = "Telescope commands" })

-- Faylni saqlash va yuritish
map({ "i", "n" }, "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
map({ "i", "n" }, "<C-a>", "<cmd>RunCode<CR>", { desc = "Run code" })
map("n", "<C-r>", "<cmd>RunCode<CR>", { desc = "Run code" })

-- Chiqish
map("n", "<C-q>", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<C-q-a>", "<cmd>qa<CR>", { desc = "Quit all" })

-- Undo/Redo (Insert rejimida)
map("i", "<C-z>", "<Esc>u")
map("i", "<C-y>", "<Esc><C-r>")

-- 1. Insert rejimida Ctrl + h/j/k/l orqali kursor harakati
map("i", "<C-h>", "<Left>", { desc = "Move cursor left" })
map("i", "<C-j>", "<Down>", { desc = "Move cursor down" })
map("i", "<C-k>", "<Up>", { desc = "Move cursor up" })
map("i", "<C-l>", "<Right>", { desc = "Move cursor right" })

-- Copy/Paste (System clipboard)
map({ "n", "v" }, "<C-c>", '"+y', { desc = "Copy to clipboard" })
map("n", "<C-v>", '"+p', { desc = "Paste from clipboard" })
map("i", "<C-v>", '<Esc>"+pa', { desc = "Paste from clipboard" })

-- File Tree uchun qo'shimcha mapping
vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Toggle File Tree" })

-- R tilida ishlash
map("n", "<F5>", function()
  vim.cmd("!Rscript %")
end, { desc = "Run current R file" })
