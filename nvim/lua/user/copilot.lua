-- use this to enable/disable filetypes
-- vim.g.copilot_filetypes = { xml = false, markdown = false }

-- Map ctrl+A to accept copilot stuff
vim.cmd[[imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")]]
vim.g.copilot_no_tab_map = true
vim.cmd[[highlight CopilotSuggestion guifg=#555555 ctermfg=8]]
