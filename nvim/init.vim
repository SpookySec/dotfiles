syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set nohlsearch
set wildmenu
set smarttab
set smartcase
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set ignorecase
set encoding=UTF-8
set colorcolumn=80
set t_Co=256
set hidden
set magic
set ruler
set mouse=a
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set number relativenumber
set splitbelow splitright
set cursorline
set termguicolors
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25
let mapleader=" "

filetype plugin on

call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'psf/black'
Plug 'jiangmiao/auto-pairs'
Plug 'safv12/andromeda.vim'
Plug 'vifm/vifm.vim'
Plug 'rust-lang/rust.vim'
Plug 'mbbill/undotree'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'kien/rainbow_parentheses.vim'
Plug 'vim-scripts/c.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'SpookySec/vim-spooky'
Plug 'SpookySec/BlacknRed'
Plug 'wlangstroth/vim-racket'

call plug#end()

command! Market execute "CocList marketplace"
command! Config execute "e ~/.config/nvim/init.vim"
command! Reload execute "source %"

" --- KEY BINDS ---
nnoremap <leader>= <cmd>Black<cr>
nnoremap <leader>w <cmd>w!<cr>
nnoremap <leader>q <cmd>q<cr>
nnoremap <leader><cr> <cmd>source ~/.config/nvim/init.vim<cr>
nnoremap <leader>u <cmd>UndotreeToggle<cr>
inoremap ;; <C-o>A;<esc>
vmap <C-c> "+y

nnoremap <leader>h <cmd>wincmd h<cr>
nnoremap <leader>j <cmd>wincmd j<cr>
nnoremap <leader>k <cmd>wincmd k<cr>
nnoremap <leader>l <cmd>wincmd l<cr>

" --- GENERAL SETTINGS ---
"colorscheme spooky
colorscheme blacknred

" --- AIRLINE SETTINGS ---
let g:airline_powerline_fonts = 1
let g:airline#extensions#coc#enabled = 1
let g:airline_detect_spelllang = 1
let g:airline_theme = 'wombat'

" --- DEV ICONS ---
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_startify = 1

" --- COC TAB COMPLETE
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" --- VIFM FILE EXPLORER
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
