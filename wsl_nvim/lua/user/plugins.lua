local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)

    -- Put plugins here
    use "wbthomason/packer.nvim"
    use "windwp/nvim-autopairs"
    use "akinsho/toggleterm.nvim"
    use "akinsho/bufferline.nvim"
    use "tpope/vim-commentary"
    use "kyazdani42/nvim-web-devicons"
    use "kyazdani42/nvim-tree.lua"
    use "nvim-lualine/lualine.nvim"
    use "moll/vim-bbye"
    use "github/copilot.vim"

    -- Markdown Plugin
    use {
        "ellisonleao/glow.nvim",
        config = function() require("glow").setup() end
    }

    -- Telescope
    use {
        "nvim-telescope/telescope.nvim",
        requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
    }

    -- CMP (Completion Plugins)
    use "hrsh7th/nvim-cmp"    -- The Plugin itself
    use "hrsh7th/cmp-buffer"  -- Buffer Completions
    use "hrsh7th/cmp-path"    -- Path completions
    use "hrsh7th/cmp-cmdline" -- Command Line Completions
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp"

    -- Snippets (Along with CMP)
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- Treesitter (for syntax highlighting)
     use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- LSP 
    use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    }

    -- Colorschemes
    use "folke/tokyonight.nvim"
    use "lunarvim/darkplus.nvim"
    use "lunarvim/colorschemes"
    use "morhetz/gruvbox"

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
