## Algovim 

A Neovim config written in Lua.

### Features:     
- Seamless Plugin and LSP management      
- Syntax Highlighting, Autocompletion      
- Terminal Integration, Markdown Previews     
- Tree View and Telescope(fzf-style search) 
- Buffers as visual Tabs

Inspired by: [SpaceVim](https://spacevim.org/) | 
             [LunarVim](https://www.lunarvim.org/#opinionated) | 
             [Fisadev](https://vim.fisadev.com/)

---

#### Main Theme: [Gruvbox-baby](https://github.com/luisiacc/gruvbox-baby)

#### Plugin Manager: [Lazy](https://github.com/folke/lazy.nvim)

#### Main Plugins: 

##### Syntax Highlighting and Code Completion:

  - [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Used to Parse Syntax
  - [LSP](https://github.com/neovim/nvim-lspconfig) | Linters, Interpreters, Code Assistance
  - [Mason](https://github.com/williamboman/mason.nvim) | Package manager for LSP servers, etc.
  - [commentary](https://github.com/tpope/vim-commentary) | Easily comment and uncomment lines
  - [autopairs](https://github.com/windwp/nvim-autopairs) | Add and remove/pair brackets, parenthesis, etc
  - [cmp](https://github.com/hrsh7th/nvim-cmp) | Code completion and shortcuts integrated with LSP
  - [Luasnip](https://github.com/L3MON4D3/LuaSnip) | Snippet Extensions and Options
---

##### Display and Navigation:

  - [Nvim-Tree](https://github.com/kyazdani42/nvim-tree.lua) | Basic file explorer
  - [Toggleterm](https://github.com/akinsho/toggleterm.nvim) | Use a Terminal within Neovim
  - [Telescope](https://github.com/nvim-telescope/telescope.nvim) | fzf and much more within Neovim
  - [Bufferline](https://github.com/akinsho/bufferline.nvim) | Turn buffers into more of a Tablike experience in a session
  - [lualine](https://github.com/nvim-lualine/lualine.nvim) | Status line showhing useful information
  - [Glow](https://github.com/ellisonleao/glow.nvim) | Markdown previews as popup within nvim.

---

#### Basic Shortcuts

- Leader Key: Spacebar
- Leader + e: Open nvim-tree
- Leader + f: Open telescope find files
- Ctrl + \: Open/Close Terminal
- Shift + h/l: Move between buffer tabs
- Ctrl + h/l: Move between nvim-tree and buffers
- #TODO do :Glow to open current buffer as markdown preview. Press q to close

- Ctrl + a: Complete Copilot Suggestion
