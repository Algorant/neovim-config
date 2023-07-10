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
  -- Colorschemes --
  {"sainnhe/gruvbox-material"},
  {"luisiacc/gruvbox-baby"},
  {"ellisonleao/gruvbox.nvim" },
  {"folke/tokyonight.nvim"},
  {"lunarvim/darkplus.nvim"},
  {"Mofiqul/dracula.nvim"},

  -- Simple Plugins --
  "windwp/nvim-autopairs",
  "tpope/vim-commentary",
  "folke/which-key.nvim",
  "akinsho/toggleterm.nvim",
  "akinsho/bufferline.nvim",

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
     -- Needed for icons to display in lualine
     dependencies = { "kyazdani42/nvim-web-devicons" },
    },

  -- Nvim-Tree (Tree-like file explorer)
  {
      'nvim-tree/nvim-tree.lua',
      -- Needed for icons to display in nvim-tree
       dependencies = { "kyazdani42/nvim-web-devicons" },
    },

  -- Treesitter
  {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

  -- LSP
  {'neovim/nvim-lspconfig'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},

  -- CMP
  {'hrsh7th/nvim-cmp'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {'hrsh7th/cmp-cmdline'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'saadparwaiz1/cmp_luasnip'},
  -- LuaSnip
  {'L3MON4D3/LuaSnip', dependencies = { "rafamadriz/friendly-snippets" }},

})
