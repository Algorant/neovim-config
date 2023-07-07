-- Setting options manually -- 

vim.opt.backup = false  	        	        -- creates a backup file
vim.opt.clipboard = "unnamedplus" 		      -- allows nvim to use system clipboard
vim.opt.cmdheight = 1 			                -- more space on nvim command line
vim.opt.conceallevel = 0		                -- get rid of conceal for now, useful for `` in markdown
vim.opt.mouse = "a"			                    -- allow the mouse
vim.opt.smartcase = true 		                -- smart cases
vim.opt.termguicolors = true 		    	      -- set more terminal colors
vim.opt.expandtab = true 		                -- converts tabs to spaces
vim.opt.shiftwidth = 2		          	      -- number of spaces per indent
vim.opt.softtabstop = 4             		    -- Soft tabs
vim.opt.tabstop = 2 			                  -- insert 2 spaces for a tab
vim.opt.cursorline = true 		              -- highlight which line you're on
vim.opt.number = true 		          	      -- show line numbers
vim.opt.wrap = false				                -- do not word wrap
vim.opt.scrolloff = 8			                  -- keeps 8 lines at bottom 
vim.opt.sidescrolloff = 4           	      -- keep 4 spaces to the left/right


-- Testing additional options --
ignorecase = true                           -- ignore case in search patterns
showmode = false                            -- get rid of things like "INSERT" because redundant with lualine
swapfile = false                            -- confusing and scary and annoying
numberwidth = 4                             -- set number column width to 4
