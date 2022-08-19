"==== My Neovim Config ====

"==== Some Default Settings ====
set encoding=utf-8
set number relativenumber
set scrolloff=7
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set mouse=a
syntax enable

" ==== Keymappings ====
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

" ==== ncm2 stuff ====

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
let g:python3_host_prog='/usr/bin/python'


"All my vim-plug plugins
call plug#begin()

Plug 'vim-airline/vim-airline' "The Status Bar
Plug 'vim-airline/vim-airline-themes' "More Themes for Status Bar
Plug 'vim-python/python-syntax' "Highlights Python Synatx
Plug 'preservim/nerdtree' "File Exploration System
Plug 'Yggdroot/indentLine' "Shows indents with vertical line
Plug 'jiangmiao/auto-pairs' "Autopairs (), [], quotes, etc
Plug 'tpope/vim-commentary' "gcc comments out code lines
" Plug 'neoclide/coc.nvim', {'branch': 'release'} "Dynamic language engine
Plug 'akinsho/bufferline.nvim' "Shows buffers in status bar

" NCM style autocompletes
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'

"Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox', { 'as': 'gruvbox' }
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/sonokai'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()


" Set Theme 
colorscheme gruvbox 

"Open NERDtree automatically
autocmd VimEnter * NERDTree
"Set ctrl+f to toggle NERDTree
nmap <C-f> :NERDTreeToggle<CR>

