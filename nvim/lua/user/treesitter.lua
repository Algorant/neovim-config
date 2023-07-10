require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "lua", "rust" },
  sync_install = false,
  ignore_install = { "" },
  autopairs = {
        enable = true,
    },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
}
