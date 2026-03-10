local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- File explorer
keymap.set("n", "<leader>pf", ":Ex<CR>", opts)

-- Move highlighted lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Static cursor and viewport
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- No copy on paste
keymap.set("x", "<leader>p", '"_dP')

-- Remove highlight
keymap.set("n", "<ESC>", ":noh<CR>", opts)

-- Telescope
keymap.set("n", "<leader>sf", ":Telescope find_files<CR>")
keymap.set("n", "<leader>lg", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>sn", ":Telescope notify<CR>")
