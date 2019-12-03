"0 Plugins {{{
so ~/.vim/plugins.vim
" 0}}}
" General {{{
filetype plugin indent on
syntax   on
set      number
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
set      incsearch
set      showcmd
set      showmatch           " highlight matching [{()}]
set      ruler               " show line and column number of the cursor on right side of statusline
set      autowrite
" }}}
" Movement {{{
nnoremap j gj
nnoremap g gk
nnoremap B ^
nnoremap E $
nnoremap J 5j
nnoremap K 5k
vnoremap J 5j
vnoremap K 5k
" }}}
" Leader Key {{{
let mapleader = ","
let maplocalleader = "\\"
" }}}
" Editing Config Files {{{
nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>ep :vsp ~/.vim/plugins.vim<CR>
nnoremap <leader>et :vsp ~/.tmux.conf<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
" }}}
" Folding Settings {{{
set foldenable
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
set foldmethod=marker
set foldlevel=0
set modelines=1
" }}}
" Colorscheme {{{
syntax enable
set background=dark
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set t_Co=256
colorscheme nord
" }}}
" Split Navigation {{{
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
" }}}
" Airline {{{
let g:airline_powerline_fonts = 1
" 3et g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ":t"
" let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_theme='nord'
" }}}
" Hard Mode (Enforcing Purity) {{{
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
" }}}
" Vimux {{{
so ~/.vim/vimux.vim
" }}}
" Ultisnippets{{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<tab-z>"
let g:UltiSnipsEditSplit="one"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
" }}}
" Replace with Register {{{
nmap <leader>gr "*gr
" }}}
" Yank Highlighting {{{
let g:highlightedyank_highlight_duration = 2000
hi HighlightedyankRegion cterm=reverse gui=reverse
" }}}
" Fzf {{{
map ; :Files<CR>
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
map <leader>l :Lines<cr>
map <leader>b :Buffers<cr>
map <leader>L :BLines<cr>
map <leader>m :Maps<cr>
" }}}
" Searching {{{
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" }}}
" Better Whitespace {{{
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
" }}}
" Task List {{{
map <leader>tl <Plug>TaskList
let g:tlWindowPosition = 1
" }}}
" NerdCommenter {{{
let g:NERDSpaceDelims = 1
" }}}
" Tmux Configuration {{{
if exists("$TMUX")
    set term=screen-256color
endif
" }}}
" Goyo Configuration {{{
map <leader>g :Goyo<CR>
let g:goyo_width = 125
" }}}
" Grip Configuration {{{
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'
" }}}
" Highlighting Yank Configuration {{{
if !exists('##TextYankPost')
    map y <Plug>(highlightedyank)
endif
" }}}
" Mappings {{{
map <leader>e cx
map <leader>i :PlugInstall<cr>
map <leader>s :w<cr>
map <leader>w <c-w>o
map <leader>\ :vsp<cr>
map <leader>- :sp<cr>
" }}}
" AutoCommands {{{
augroup every
    autocmd!
    au InsertEnter * set norelativenumber
    au InsertLeave * set relativenumber
augroup END
" }}}
" Persistent Undo {{{
set undodir=~/.vim/undodir
set undofile
" }}}
" EasyMotion {{{
" Press f to get to any word in the screen
nmap f <Plug>(easymotion-bd-w)
vmap f <Plug>(easymotion-bd-w)
"}}}
" Eunuch {{{
map <leader>M :Move<space>
map <leader>D :Delete<space>
map <leader>mk :Mkdir<space>
"}}}
"vim:foldmethod=marker:foldlevel=0
