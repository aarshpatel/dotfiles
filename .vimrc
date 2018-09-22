"=====================================================
"" Plugins
"=====================================================
so ~/.vim/plugins.vim

"=====================================================
"" General settings
"=====================================================
filetype plugin indent on
syntax   on set number
set      relativenumber
set      ignorecase
set      smartcase
set      nohlsearch
set      tabstop=4
set      shiftwidth=4
set      expandtab
set      nobackup
set      noswapfile
set      nowrap
set      cursorline
set      autoread
set      updatetime=100
set      re=1
set      encoding=UTF-8
set      colorcolumn=80
let mapleader = ","
let maplocalleader = "\\"

"=====================================================
"" Colorscheme
"=====================================================
syntax enable
set background=dark
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
" let ayucolor="dark"
set t_Co=256
colorscheme atom-dark

"=====================================================
"" Nerdtree
"=====================================================
map <C-e> :NERDTreeToggle<CR>
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeChDirMode=2

"=====================================================
"" Split Navigation
"=====================================================
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

"=====================================================
"" Airline
"=====================================================
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ":t"
" let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_theme='jellybeans'

"=====================================================
"" Disable Arrow Keys (hard mode)
"=====================================================
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

"=====================================================
"" Vimux
"=====================================================
so ~/.vim/vimux.vim

"=====================================================
"" Ultisnippets
"=====================================================
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<tab-z>"
let g:UltiSnipsEditSplit="one"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

"=====================================================
"" Replace with Register
"=====================================================
nmap <leader>gr "*gr

"=====================================================
"" Yank Highlighting
"=====================================================
let g:highlightedyank_highlight_duration = 2000
hi HighlightedyankRegion cterm=reverse gui=reverse

"=====================================================
"" Fzf
"=====================================================
map ; :Files<CR>

"=====================================================
"" Searching
"=====================================================
set hlsearch
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"=====================================================
"" Better Whitespace
"=====================================================
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

"=====================================================
"" Running Python/Node/Go scripts
"=====================================================
map <Leader>n :!clear; node "%"<CR>
map <Leader>p :!clear; python "%"<CR>
map <Leader>g :!clear; go run "%"<CR>
"=====================================================
"" Easy Align
"=====================================================
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"=====================================================
"" Task List
"=====================================================
map <leader>tl <Plug>TaskList
let g:tlWindowPosition = 1

"=====================================================
"" Comfortable Motion
"=====================================================
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

"=====================================================
"" DevIcons
"=====================================================
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

"=====================================================
"" NerdCommenter
"=====================================================
let g:NERDSpaceDelims = 1

"=====================================================
"" NerdTree File Highlighting
"=====================================================
so ~/.vim/nerdtree_highlighting.vim

"=====================================================
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'
map <Leader>l :LLPStartPreview<CR>
"=====================================================
