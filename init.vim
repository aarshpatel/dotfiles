" (NeoVim) Configuration
" By Aarsh Patel
" December 2019

" Plugins {{{
so ~/.config/nvim/plugins.vim
"}}}
" General {{{
filetype plugin indent on
syntax   on
set      autoread
set      autowrite           " automatically save files when switching buffers
set      colorcolumn=80
set      cursorline
set      encoding=UTF-8
set      expandtab
set      ignorecase
set      incsearch
set      laststatus=2
set      lazyredraw
set      nobackup
set      nohlsearch
set      noswapfile
set      nowrap
set      number
set      re=1
set      relativenumber
set      ruler               " show line and column number of the cursor on right side of statusline
set      shiftwidth=4
set      showcmd
set      showmatch           " highlight matching [{()}]
set      smartcase
set      tabstop=4
set      updatetime=100
set      wildmenu
" }}}
" Leader Key {{{
let mapleader = ","
let maplocalleader = "\\"
" }}}
" Movement {{{
map gg :1<cr>
nnoremap j gj
nnoremap g gk
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" }}}
" Editing Config Files {{{
nnoremap <leader>Ep :e ~/.config/nvim/plugins.vim<CR>
nnoremap <leader>ep :vsp ~/.config/nvim/plugins.vim<CR>
nnoremap <leader>Et :e ~/.tmux.conf<CR>
nnoremap <leader>et :vsp ~/.tmux.conf<CR>
nnoremap <leader>Ev :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>ev :vsp ~/.config/nvim/init.vim<CR>
nnoremap <leader>Ez :e ~/.zshrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
" }}}
" Folding Settings {{{
nnoremap <space> za
set foldenable
set foldlevel=0
set foldlevelstart=10   " open most folds by default
set foldmethod=indent   " fold based on indent level
set foldmethod=marker
set foldnestmax=10      " 10 nested fold max
set modelines=1
" }}}
" Colorscheme {{{
syntax enable
set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
colorscheme space_vim_theme
" }}}
" Split Navigation {{{
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
" }}}
" Lightline {{{
let g:lightline = {
  \ 'colorscheme': 'space_vim_theme',
  \ 'left': [['mode', 'paste'], ['readonly', 'filename', 'modified']],
  \ 'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \ }
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
" }}} Vimux {{{
so ~/.vim/vimux.vim
" }}}
" Ultisnippets{{{
let g:UltiSnipsEditSplit="one"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<tab-z>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
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
let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'
nmap <space><space> :Files<CR>
nmap <leader>l :Lines<cr>
map <leader>b :Buffers<cr>
nmap <leader>bl :BLines<cr>
map <leader>m :Maps<cr>
map <leader>h :FZFMru<cr>
map <leader>bt :BTags<cr>
map <leader>t :Tags<cr>
map <leader>/ :Ag<space>
nnoremap <leader>/ :Rg<space>
nnoremap <silent> <leader><space> :Files <C-r>=expand("%:h")<CR>/<CR>
" }}}
" Searching {{{
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" }}}
" Better Whitespace {{{
let g:better_whitespace_enabled=1
let g:strip_whitespace_confirm=0
let g:strip_whitespace_on_save=1
" }}}
" Task List {{{
map <leader>tl <Plug>TaskList
let g:tlWindowPosition = 1
" }}}
" NerdCommenter {{{
let g:NERDSpaceDelims = 1
" }}}
" Tmux Configuration {{{
" if exists("$TMUX")
    " set term=screen-256color
" endif
" }}}
" Goyo Configuration {{{
map <leader>g :Goyo<CR>
let g:goyo_width = 125
" }}}
" Markdown Preview {{{
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_browser = 'Google Chrome'
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }
let g:mkdp_page_title = '「${name}」'
" }}}
" Highlighting Yank Configuration {{{
if !exists('##TextYankPost')
    map y <Plug>(highlightedyank)
endif
" }}}
" Mappings {{{
autocmd FileType python nmap <leader>p :w<cr>:! python3 %<cr>
autocmd FileType python nmap <LocalLeader>a :g/parser/norm @q<cr>
map <leader>- :sp<cr>
map <leader><w> :w!<cr>
map <leader>\ :vsp<cr>
map <leader>dw :g/^$/d<cr>
map <leader>e cx
map <leader>i <leader>sv :PlugInstall<cr>
map <leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
map <leader>q :q<cr>
map <leader>s :sort i<cr>
vmap <leader>o gf<cr>
nnoremap ; :
nnoremap <leader>* :%s/\<<c-r><c-w>\>//g<left><left>
noremap Y y$
" }}}
" AutoCommands {{{
augroup every
    autocmd!
    au InsertEnter * set norelativenumber
    au InsertLeave * set relativenumber
augroup END
" sort imports in python file using \\i command
autocmd FileType python nnoremap <LocalLeader>i :!isort %<CR><CR>
autocmd FileType yaml set tabstop=2 shiftwidth=2 colorcolumn=
autocmd FileType sh setlocal colorcolumn= expandtab shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType vim setlocal colorcolumn= shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType markdown setlocal colorcolumn= shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType tmux setlocal colorcolumn= shiftwidth=4 tabstop=8 softtabstop=4
" }}}
" Persistent Undo {{{
set undodir=~/.vim/undodir
set undofile
" }}}
" Eunuch {{{
map <leader>M :Move<space>
map <leader>D :Delete<space>
map <leader>mk :Mkdir<space>
"}}}
" Peekaboo {{{
let g:peekaboo_window = "vert bo 80new"
"}}}
" Coc (AutoCompletion) Vim {{{
so ~/.config/nvim/coc.vim
"}}}
" Magic Mode {{{
nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %smagic/
cnoremap \>s/ \>smagic/
nnoremap :g/ :g/\v
nnoremap :g// :g//
"}}}
" Python DocStrings {{{
vmap <leader>dd :norm <<Bcaw:<cr>
vmap <leader>de :norm >>Bcaw-<space><cr>
vmap <leader>dp :norm <<Bcaw:param<space><cr>
vmap <leader>dp :norm <<I:param<space><cr>
"}}}
" TitleCase {{{
let g:titlecase_map_keys = 0
nmap <leader>tc <Plug>Titlecase
vmap <leader>tc <Plug>Titlecase
nmap <leader>tC <Plug>TitlecaseLine
nmap <leader>tc <Plug>Titlecase
nmap <leader>tc <Plug>Titlecase
"}}}
" ArgWrap {{{
nnoremap <silent> <leader>a :ArgWrap<CR>
"}}}
" VimWiki {{{
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
" }}}
"vim:foldmethod=marker:foldlevel=0
