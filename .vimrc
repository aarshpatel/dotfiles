" Plugins
call plug#begin("~/.vim/plugged")
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdtree' 
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" The Basics
filetype plugin indent on
syntax on set number
set relativenumber
set ignorecase
set smartcase 
set nohlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
set cursorline

" Colorscheme
syntax enable
set termguicolors
set background=dark
colorscheme nova

" Preferences
let mapleader = ","

" Nerdtree 
map <C-e> :NERDTreeToggle<CR>
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeChDirMode=2

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Vim Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
