" Be improved
set nocompatible

" Visual
filetype on
syntax on
colorscheme Tomorrow-Night
set guifont=Menlo\ Regular:h18
set lines=35 columns=100
set colorcolumn=90
set number
set showmatch

" Key mapping
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

" Speed it up
set hidden
set history=100

" Indentation
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Searching
set hlsearch
nnoremap <F3> :set hlsearch!<CR>

" Re-open
nnoremap <Leader><Leader> :e#<CR>


