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
