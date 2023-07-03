-- General settings
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
-- The way to set keymaps
local keymap = vim.api.nvim_set_keymap

-- Map jk to escape insert mode
keymap("i", "jk", "<ESC>", opts)

-- Make Shift-Tab unindent
keymap("i", "<S-Tab>", "<C-d>", opts)

--Remap Space as Leader Key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remap Enter for Empty lines
keymap("n", "<Enter>", "o<ESC>", opts)
keymap("n", "<S-Enter>", "O<ESC>", opts)
