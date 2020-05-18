"===General===========================

set encoding=utf-8	 " The encoding displayed
set fileencoding=utf-8	 " The encoding written to file
syntax on		 " Enable syntax highlight
set ttyfast		 " Faster redrawing
set lazyredraw		 " Only redraw when necessary
set cursorline		 " Find the current line quickly
let mapleader="\<space>" " Use space as leader
set nobackup		 " Disable all backupfiles
set nowritebackup
set noswapfile

call plug#begin()
"===Themes and layout plugins=========

" Vim Airline Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" One Dark Theme (Same as Atom)
Plug 'joshdick/onedark.vim'

" A fancy start screen
Plug 'mhinz/vim-startify'

"===Productivity======================

" Git support
Plug 'tpope/vim-fugitive'

" Commenting
Plug 'scrooloose/nerdcommenter'

" Auto-pairs brackets
Plug 'jiangmiao/auto-pairs'

" Multiple-cursors (same as sublime text)
Plug 'terryma/vim-multiple-cursors'

" Edit HTML fast
Plug 'mattn/emmet-vim'

"===Fuctionality=======================

" linting
Plug 'w0rp/ale'

" File System Explorer
Plug 'preservim/nerdtree'

" Nerdtree git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'

call plug#end()

"===Plugin=configs=====================

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
\	'*': ['remove_trailing_lines', 'trim_whitespace'],
\	'c': ['cmakeformat'],
\}
" Linter configurations
let g:ale_linters={
\	'c': ['gcc'],
\	'cpp': ['g++'],
\	'python': ['pycodestyle']
\}

"===Visual=configs=====================

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

"===Keymappings========================

" Copy and paste to/from vIM and the clipboard
nnoremap <C-y> +y
vnoremap <C-y> +y
nnoremap <C-p> +P
vnoremap <C-p> +P

" Access system clipboard
set clipboard=unnamed

"===Indentation=======================

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
