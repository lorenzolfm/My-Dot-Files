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

let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
