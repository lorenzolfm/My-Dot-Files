call plug#begin()
"One Dark Theme (Same as Atom)
Plug 'joshdick/onedark.vim'
"Multiple Cursors for editing
Plug 'terryma/vim-multiple-cursors'
"Make nVim plyglot
Plug 'sheerun/vim-polyglot'
"Auto complete
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" if has('nvim')
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
  " Plug 'Shougo/deoplete.nvim'
  " Plug 'roxma/nvim-yarp'
  " Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
"Check syntax assynchronously and fix files
Plug 'w0rp/ale'
"Make pair of brackets by default
Plug 'jiangmiao/auto-pairs'
"Statusline
Plug 'vim-airline/vim-airline'
"File System Explorer
Plug 'scrooloose/nerdtree'
"Commenting
Plug 'scrooloose/nerdcommenter'
"Edit HTML fast
Plug 'mattn/emmet-vim'
call plug#end()

" Allows switching between files without saving
set hidden

" Show number lines
set number

" Show changes when modifying text
set inccommand=split

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

"Navigate through complete menu with TAB
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Emmet vim shortcut
let g:user_emmet_leader_key='<c-d>'
"Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

let g:ycm_autoclose_preview_window_after_completion = 0

"Remove delay between modes
set ttimeout ttimeoutlen=0
