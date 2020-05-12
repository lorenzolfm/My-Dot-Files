call plug#begin()

" One Dark Theme (Same as Atom)
Plug 'joshdick/onedark.vim'

" Multiple Cursors for editing
Plug 'terryma/vim-multiple-cursors'

" Make nVim polyglot
Plug 'sheerun/vim-polyglot'

" Auto complete
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" Check syntax assynchronously and fix files
Plug 'w0rp/ale'

" Make pair of brackets by default
Plug 'jiangmiao/auto-pairs'

" Statusline
Plug 'vim-airline/vim-airline'

" File System Explorer
Plug 'scrooloose/nerdtree'

" Commenting
Plug 'scrooloose/nerdcommenter'

" Edit HTML fast
Plug 'mattn/emmet-vim'

" A fancy start screen
Plug 'mhinz/vim-startify'

" True snippet and additional text editing support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Allows switching between files without saving
set hidden

" Show number lines
set number

" Show relative line numbers
set relativenumber             

" Display long lines as just one line
set nowrap

" Disabling auto-insertion of comment leader
set formatoptions-=cro

" Show changes when modifying text
set inccommand=split

" Disable all backup files
set nobackup
set nowritebackup
set noswapfile

" Setting colorscheme and background
colorscheme onedark
set background=dark

syntax on

" Defines spacekey as mapleader
let mapleader="\<space>"


" Split windows shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new split panes to right and bottom
set splitbelow
set splitright

" NERDTreeToogle shortcut
nnoremap <leader>q :NERDTreeToggle<CR>

" Navigate through complete menu with TAB
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Emmet vim shortcut
let g:user_emmet_leader_key='<c-d>'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims=1

" Close ycm preview window after completion
let g:ycm_autoclose_preview_window_after_completion=1 

" Lint on save
let g:ale_lint_on_save=1

" Remove delay between modes
set ttimeout ttimeoutlen=0

" One tab = 2 spaces
set tabstop=2
set shiftwidth=2

" Close preview window when completion is done (coc)
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
