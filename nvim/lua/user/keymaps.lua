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

-- Controls for NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files hidden=true<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)

-- Buffers
keymap("n", "<leader>q", ":bd <CR>", opts) --exit buffer
keymap("n", "<S-l>", ":bnext<CR>", opts) -- next buffer (aka tab)
keymap("n", "<S-h>", ":bprevious<CR>", opts) -- previous buffer (aka tab)
