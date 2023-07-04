local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example config, #TODO fix this later --
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  -- Which Key? -- 
  "folke/which-key.nvim",

  -- Toggleterm
  { 'akinsho/toggleterm.nvim' },

  -- Lualine
  { 
    'nvim-lualine/lualine.nvim',
     -- Needed for icons to display in lualine
     dependencies = { "kyazdani42/nvim-web-devicons",},
    },

  -- Nvim-Tree (Tree-like file explorer)
  {
      'nvim-tree/nvim-tree.lua',
      -- Needed for icons to display in nvim-tree
       dependencies = { "kyazdani42/nvim-web-devicons" },
    },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

  -- Colorschemes --
  -- Default to gruvbox with the extra settings --
  {
	  "morhetz/gruvbox",
	  lazy = false,
	  priority = 1,
	  config = function()
	  vim.cmd([[colorscheme gruvbox]])
	end,
  },

  -- Additional Colorschemes --
  {"folke/tokyonight.nvim"},
  {"lunarvim/darkplus.nvim"},	
  {"Mofiqul/dracula.nvim"},
  {"lunarvim/colorschemes"},


})
