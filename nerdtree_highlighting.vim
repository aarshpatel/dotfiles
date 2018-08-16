function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#212733')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#212733')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#212733')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#212733')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#212733')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#212733')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#212733')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#212733')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#212733')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#212733')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#212733')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#212733')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#212733')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#212733')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#212733')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#212733')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#212733')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#212733')
call NERDTreeHighlightFile('vue', 'Red', 'none', '#47B784', '#212733')
