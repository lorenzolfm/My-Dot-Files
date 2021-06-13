let mapleader="\<space>"     " Use spacebar as leader key

" Plugins:
call plug#begin()

" Colorscheme
Plug 'morhetz/gruvbox'

" Sexy statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" A fancy start screen
Plug 'mhinz/vim-startify'

" Use git in command mode
Plug 'tpope/vim-fugitive'

" Shows git diff in signcolumn. Manipulate individual hunks
Plug 'airblade/vim-gitgutter'

" Nerdtree FTW
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Fast HTML
Plug 'mattn/emmet-vim'

call plug#end()
