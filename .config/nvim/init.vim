call plug#begin()
"One Dark Theme (Same as Atom)
Plug 'joshdick/onedark.vim'
"Multiple Cursors for editing
Plug 'terryma/vim-multiple-cursors'
"Make nVim plyglot
Plug 'sheerun/vim-polyglot'
"Auto complete
"Plug 'roxma/nvim-completion-manager'
Plug 'Shougo/neco-syntax'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-syntax'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-tern'
Plug 'mhartington/nvim-typescript'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-vim'
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
"Emmet for html
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

" Append ; shortcut
nnoremap <leader>; A;<esc>
nnoremap <leader>q :NERDTreeToggle<CR>

"Navigate through complete menu with TAB
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Emmet vim shortcut
let g:user_emmet_leader_key='<c-d>'
"Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

"Remove delay between modes
set ttimeout ttimeoutlen=0