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

-- Modes
--    normal_mode = "n"
--    insert_mode = "i"
--    visual_mode = "v"
--    visual_block_mode = "x"
--    term_mode = "t"
--    command_mode = "c"

-- Normal Mode
-- Better Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Open File Explorer
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)


-- Resize with Arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
