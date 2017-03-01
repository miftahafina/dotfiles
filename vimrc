execute pathogen#infect()

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
set norelativenumber
set showmatch
set wildmenu

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
set ignorecase
set smartcase
set gdefault
set incsearch

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za

" Movement
set scrolloff=7

" Navigation
set mouse=a

" Buffers
map <C-k> :bnext<CR>
map <C-j> :bprevious:<CR>


" Re-open
nnoremap <Leader><Leader> :e#<CR>

" Plugins
let g:lightline = { 'colorscheme': 'wombat' }
set laststatus=2
set noshowmode

" Shortcuts
map <C-s> :write<CR>
map <C-\> :NERDTreeToggle<CR>
map <C-w> :quit<CR>
cnoremap Q q

" Backup
set noswapfile
