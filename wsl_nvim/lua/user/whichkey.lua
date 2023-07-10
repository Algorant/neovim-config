local wk = require("which-key")
local mappings = {
  q = {":q<CR>", "Quit"},
  Q = {":wq<CR>", "Save & Quit"},
  w = {":w<CR>", "Save"},
  x = {":bdelete<CR>", "Close Buffer"},
  E = {":e~/.config/nvim/init.lua", "Edit Config"},
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
