" My Neovim Config
" Some Default Settings
set encoding=utf-8
set number 
set scrolloff=7
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set mouse=a
syntax enable

"Go to next/previous tab shortcuts
nnoremap <Tab> gt
nnoremap <S-Tab> gT

"Lets try an esc remap
inoremap jk <ESC>

"Enter for extra lines
map <Enter> o<ESC>
map <S-Enter> O<ESC>

"Highlights Python Syntax Dynamically
let g:python_highlight_all = 1

" COC Node Path

"" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"All my vim-plug plugins
call plug#begin()

Plug 'vim-airline/vim-airline' "The Status Bar
Plug 'vim-airline/vim-airline-themes' "More Themes for Status Bar
Plug 'vim-python/python-syntax' "Highlights Python Synatx
Plug 'preservim/nerdtree' "File Exploration System
Plug 'Yggdroot/indentLine' "Shows indents with vertical line
Plug 'jiangmiao/auto-pairs' "Autopairs (), [], quotes, etc
Plug 'tpope/vim-commentary' "gcc comments out code lines
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Dynamic language engine
Plug 'akinsho/bufferline.nvim' "Shows buffers in status bar

"Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox', { 'as': 'gruvbox' }

call plug#end()

" Set Theme 
colorscheme gruvbox 

"Open NERDtree automatically
autocmd VimEnter * NERDTree
"Set ctrl+f to toggle NERDTree
nmap <C-f> :NERDTreeToggle<CR>


