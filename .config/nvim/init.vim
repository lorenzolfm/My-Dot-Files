"===========================================================
"===General=================================================

set encoding=utf-8          " The encoding displayed
set fileencoding=utf-8      " The encoding written to file
syntax on                   " Enable syntax highlight
set ttyfast                 " Faster redrawing
set lazyredraw              " Only redraw when necessary
set cursorline              " Find the current line quickly
let mapleader="\<space>"    " Use space as leader
set updatetime=300          " Set update time to 300ms
set nobackup                " Disable all backupfiles
set nowritebackup
set noswapfile

"====Plugins=================================================
call plug#begin()
"===Themes=and=layout========================================

" Vim Airline Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" One Dark Theme (Same as Atom)
Plug 'joshdick/onedark.vim'

" A fancy start screen
Plug 'mhinz/vim-startify'

"===Productivity==============================================

" Git support
Plug 'tpope/vim-fugitive'

" Commenting
Plug 'scrooloose/nerdcommenter'

" Auto-pairs brackets
" Can be replaced by coc autopairs
Plug 'jiangmiao/auto-pairs'

" Multiple-cursors (same as sublime text)
Plug 'terryma/vim-multiple-cursors'

" Edit HTML fast
Plug 'mattn/emmet-vim'

"===Fuctionality==============================================

" Add language support
Plug 'sheerun/vim-polyglot'

" linting
Plug 'w0rp/ale'

" File System Explorer
Plug 'preservim/nerdtree'

" Nerdtree git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" Git show diffs
Plug 'airblade/vim-gitgutter'

" Coc is an intellisense engine for Vim/Neovim
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"===Plugin=configs============================================

" NerdTree

" NerdTreeToogle shortcut (space + q)
nnoremap <leader>q :NERDTreeToggle<CR>
" Close NerdTree after a file is opened
let g:NERDTreeQuitOnOpen=1

" Airline

" Setting airline onedark theme
let g:airline_theme='onedark'
" Enabling airline to use powerline fonts
let g:airline_powerline_fonts=1

" Ale

" Fix files on save
let g:ale_fix_on_save=1
" Lint after 1s after changes are made both on insert and normal mode
let g:ale_lint_on_text_changed='always'
let g:ale_lint_delay=1000
" Use emojis for errors and warnings
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
" Fixer configurations
let g:ale_fixers={
\	'*': ['remove_trailing_lines', 'trim_whitespace']
\}
" Linter configurations
let g:ale_linters={
\	'c': ['gcc'],
\	'cpp': ['cpplint'],
\	'python': ['black']
\}

" COC

" TextEdit might fail if hidden is not set
set hidden

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c



"===Visual=configs===========================================

" 256 colors
set t_Co=256

" Theme
colorscheme onedark

" Display long lines as just one line
set nowrap

" Display relative line numbers
set relativenumber
set number

" Toogle invisible characters
set invlist
set list
set listchars=tab:¦\ ,eol:¬,trail:⋅,extends:❯,precedes:❮

" Show changes when modifying text
set inccommand=split

" Open new split panes to right and bottom
set splitbelow
set splitright

" Keep cursor centered vertically, if possible (toogle with <leader>zz)
set scrolloff=999
if !exists('*VCenterCursor')
  augroup VCenterCursor
  au!
  au OptionSet *,*.*
    \ if and( expand("<amatch>")=='scrolloff' ,
    \         exists('#VCenterCursor#WinEnter,WinNew,VimResized') )|
    \   au! VCenterCursor WinEnter,WinNew,VimResized|
    \ endif
  augroup END
  function VCenterCursor()
    if !exists('#VCenterCursor#WinEnter,WinNew,VimResized')
      let s:default_scrolloff=&scrolloff
      let &scrolloff=winheight(win_getid())/2
      au VCenterCursor WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
    else
      au! VCenterCursor WinEnter,WinNew,VimResized
      let &scrolloff=s:default_scrolloff
    endif
  endfunction
endif

nnoremap <leader>zz :call VCenterCursor()<CR>
"===Keymappings==============================================

" Access system clipboard
set clipboard=unnamed

"===Indentation==============================================

" Use space instead of tabs
set expandtab

" Use smarttab
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Auto indent
set ai

" Smart indent
set si

"===Misc=====================================================

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
