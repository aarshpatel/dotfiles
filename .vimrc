" Plugins
so ~/.vim/plugins.vim

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
set autoread
set updatetime=100


" Colorscheme
syntax enable
set termguicolors
set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme jellybeans
"set t_Co=256

" Preferences
let mapleader = ","
let maplocalleader = "\\"

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
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"
let g:airline_theme='jellybeans'


" Disable arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

"Vimux
" make the split take up 40% of the terminal screen
let g:VimuxHeight = "50"
" open a horizontal split
let g:VimuxOrientation = "h"

" Close the vimux pane
map <Leader>vq :VimuxCloseRunner<CR>
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Running NodeJS Scripts
map <Leader>vn :call VimuxRunCommand("clear; node " . bufname("%"))<CR>
" Running Python Scripts
map <Leader>vpy :call VimuxRunCommand("clear; python " . bufname("%"))<CR>

function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction

" If text is selected, save it in the v buffer and send that buffer it to tmux
vmap <LocalLeader>vs "vy :call VimuxSlime()<CR>
" Select current paragraph and send it to tmux
nmap <LocalLeader>vs vip<LocalLeader>vs<CR>


" UtilSnippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="nord"

" Replace with Register
nmap <leader>gr "*gr

" Yank Highlighting
let g:highlightedyank_highlight_duration = 2000
hi HighlightedyankRegion cterm=reverse gui=reverse

" fzf
map ; :Files<CR>

" Searching
set hlsearch
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Better Whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Undotree
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" JSON highlighting
autocmd BufNewFile,BufRead *.json set ft=javascript

