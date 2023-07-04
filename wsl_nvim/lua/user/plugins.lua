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
  -- Simple Plugins --
  "windwp/nvim-autopairs",
  "tpope/vim-commentary",
  "folke/which-key.nvim",
  "akinsho/toggleterm.nvim",

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

    -- LSP v2 using lspzero
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          build = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    },


    -- LSP Stuff using LSPZero which is like sane default quickstart for lsp, cmp, and mason
    -- { "VonHeikemen/lsp-zero.nvim",
    --         dependencies = {
    --             "neovim/nvim-lspconfig",
    --             "williamboman/mason.nvim",
    --             "williamboman/mason-lspconfig.nvim",
    --             "hrsh7th/nvim-cmp",
    --             "hrsh7th/cmp-buffer",
    --             "hrsh7th/cmp-path",
    --             "saadparwaiz1/cmp_luasnip",
    --             "hrsh7th/cmp-nvim-lsp",
    --             "hrsh7th/cmp-nvim-lua",
    --             "L3MON4D3/LuaSnip",
    --             "rafamadriz/friendly-snippets",
    --             { "lukas-reineke/lsp-format.nvim", config = true },
    --     },
    -- },

    
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
