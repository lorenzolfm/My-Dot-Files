" NerdTreeToogle shortcut (space + q)
nnoremap <leader>q :NERDTreeToggle<CR>

" Close NerdTree after a file is opened
let g:NERDTreeQuitOnOpen=1

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
