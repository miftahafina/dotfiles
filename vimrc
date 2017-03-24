execute pathogen#infect()

" Be improved
set nocompatible

" Visual
filetype on
syntax on
colorscheme Tomorrow-Night
set guifont=Menlo\ Regular:h18
" set lines=35 columns=100
set colorcolumn=100
set number
set norelativenumber
set showmatch
set wildmode=longest,list,full
set wildmenu
set cursorline

" Key mapping
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

" Numbering
map <leader>r :set relativenumber!<CR>

" Speed it up
set hidden
set history=100

" Indentation
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Wrapping
set wrap
set linebreak
set nolist

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
" kenapa spasi dan w bisa ya?

" Movement
set scrolloff=5

" Navigation
set mouse=a

" Buffer
map <C-k> :bnext<CR>
map <C-j> :bprevious<CR>
map <C-w> :bdelete<CR>
map <C-q> :q<CR>
map <C-Q> :q!<CR>
map <C-t> :badd

" Re-open
nnoremap <Leader><Leader> :e#<CR>

" Plugins
set laststatus=2
set noshowmode

" Lightline
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'fugitive' ], [ 'bufferline' ] ],
  \ },
  \ 'component': {
  \   'fugitive': '%{fugitive#statusline()}',
  \   'bufferline': '%{bufferline#refresh_status()}%{g:bufferline_status_info.before . g:bufferline_status_info.current . g:bufferline_status_info.after}'
  \ }
\ }

" Bufferline
let g:bufferline_echo = 0

" Syntastic
let g:syntastic_mode_map = {
  \ "mode": "passive",
  \ "active_filetypes": ["php", "Ruby"],
  \ "passive_filetypes": ["puppet"] }

" Shortcuts
map <C-s> :write<CR>
map <C-\> :NERDTreeToggle<CR>
cnoremap Q q

" Backup
set noswapfile

" Executing file
autocmd FileType ruby nmap <F5> :!ruby %
