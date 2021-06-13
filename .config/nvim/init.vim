"===========================================================
"===General=================================================


set exrc		    " Enable reading .vimrc/.exrc/.gvimrc in the current directory
set relativenumber	" Show the relative line number for each line
set nu			    " Show the current line actual number
set nohlsearch		" Don't highlight all matches for the last used search pattern
set hidden		    " Allows to move away from a buffer without saving
set noerrorbells	" Turn of annoying error noises
set nowrap		    " Do not wrap full line
set tabstop=4		" Number of spaces a <Tab> in the text stands for
set softtabstop=4	" Number of spaces to insert for a <Tab>
set shiftwidth=4	" Number of spaces used for each step of (auto)indent
set expandtab		" Expand <Tab> to spaces in Insert mode
set smartindent		" Do clever autoindenting
set incsearch		" Show match for partly types search command
set scrolloff=8		" Number of screen lines to show around the cursor
set signcolumn=yes	" Display the signcolumn
set encoding=utf-8      " Set encoding to UTF-8
set fileencoding=utf-8  " Stores encoding of current buffer as UTF-8
set lazyredraw          " Only redraw screen when necessary
set cursorline          " Highlights cursor line
set updatetime=300      " Set updatetime to 300ms
set nobackup            " Disable file backup
set nowritebackup
set noswapfile


"====Plugins=================================================


call plug#begin()

" Colorscheme
Plug 'morhetz/gruvbox'              

" Sexy statusline
Plug 'vim-airline/vim-airline'      
Plug 'vim-airline/vim-airline-themes'

" A fancy start screen
Plug 'mhinz/vim-startify'           

" Git support
Plug 'tpope/vim-fugitive'

call plug#end()


syntax on                   " Enables syntax highlighting
let mapleader="<space>"     " Use spacebar as leader key
colorscheme gruvbox

"====PluginSettings==========================================

let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
